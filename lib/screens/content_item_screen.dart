import 'package:flutter/material.dart';
import 'package:inclusao_digital/models/content_model.dart';
import 'package:inclusao_digital/screens/short_cut_screen.dart';

class ContentItem extends StatelessWidget {
  int index = 0;
  bool isShortCut = false;

  Widget _createScetionTitle(BuildContext context, String title) {
    index++;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'OpenSans'),
      ),
    );
  }

  bool _isShortCurt(ContentModel model) {
    if (model.titulo == 'Atalhos do Teclado') {
      isShortCut = true;
      return true;
    }
    return false;
  }

  Widget _createContainer(
      String content, BuildContext context, ContentModel model) {
    return Column(
      children: [
        _createScetionTitle(context, model.conteudo.keys.toList()[index]),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              content,
              style: TextStyle(fontSize: 17, fontFamily: 'RobotoCondensed'),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
        const Divider(
          height: 20,
          color: Color.fromRGBO(73, 104, 141, 1),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final contentModel =
        ModalRoute.of(context)!.settings.arguments as ContentModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(73, 104, 141, 1),
        title: Text(
          contentModel.titulo.toUpperCase(),
          style: const TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _isShortCurt(contentModel)
          ? ShortCutScreen()
          : SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    contentModel.imageURL,
                    fit: BoxFit.cover,
                  ),
                  const Divider(
                    color: Color.fromRGBO(73, 104, 141, 1),
                  ),
                  Column(
                    children: [
                      ...contentModel.conteudo.values.map((e) {
                        return _createContainer(e, context, contentModel);
                      }),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
