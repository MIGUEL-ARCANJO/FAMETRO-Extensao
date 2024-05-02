import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:inclusao_digital/components/short_cut_detail.dart';
import 'package:inclusao_digital/data/dummy_data.dart';
import 'package:inclusao_digital/models/short_curts_model.dart';

class ShortCutDetailsScreen extends StatelessWidget {
  late String title;
  late String content;
  late Color color;

  _verifyContentBody(ShortCutsModel model) {
    if (model.name == 'Word') {
      title = DUMMY_WORD.title;
      content = DUMMY_WORD.content;
      color = Colors.blue;
    } else if (model.name == 'Excel') {
      title = DUMMY_EXCEL.title;
      content = DUMMY_EXCEL.content;
      color = Colors.green;
    } else {
      title = DUMMY_PPTX.title;
      content = DUMMY_PPTX.content;
      color = Colors.orangeAccent;
    }
  }

  Widget _verifTypeShortCut(ShortCutsModel model) {
    List<String> atalhos;
    List<String> nomeAtalho;
    if (model.name == 'Word') {
      atalhos = DUMMY_WORD.atalhos.keys.map((e) => e).toList();
      nomeAtalho = DUMMY_WORD.atalhos.values.map((e) => e).toList();

      return ShortCutDetail(nomeAtalho, atalhos, color);
    } else if (model.name == 'Excel') {
      atalhos = DUMMY_EXCEL.atalhos.keys.map((e) => e).toList();
      nomeAtalho = DUMMY_EXCEL.atalhos.values.map((e) => e).toList();

      return ShortCutDetail(nomeAtalho, atalhos, color);
    } else {
      atalhos = DUMMY_PPTX.atalhos.keys.map((e) => e).toList();
      nomeAtalho = DUMMY_PPTX.atalhos.values.map((e) => e).toList();

      return ShortCutDetail(nomeAtalho, atalhos, color);
    }
  }

  @override
  Widget build(BuildContext context) {
    final model = ModalRoute.of(context)!.settings.arguments as ShortCutsModel;
    _verifyContentBody(model);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Atalhos do ${model.name}',
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: color,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SingleChildScrollView(
            child: Card(
              color: color,
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'OpenSans'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      content,
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'RobotoCondensed'),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Atalhos ${model.name} (ShortCuts)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          _verifTypeShortCut(model)
        ]),
      ),
      backgroundColor: const Color.fromRGBO(226, 226, 226, 1),
    );
  }
}
