import 'package:flutter/material.dart';
import 'package:inclusao_digital/components/short_cut_item.dart';
import 'package:inclusao_digital/data/dummy_data.dart';

class ShortCutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Container(
            height: 260,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset(
              'assets/images/icon_shortcut.jpg',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Atalhos de teclado são combinações de teclas que realizam funções específicas no computador, substituindo ações que normalmente seriam feitas com o mouse.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontFamily: 'RobotoCondensed'),
                ),
              ),
            ),
          ),
        ],
      ),
      Divider(),
      ...DUMMY_SHORTCURTS.map((e) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ShortCutItem(e),
        );
      })
    ]);
  }
}
