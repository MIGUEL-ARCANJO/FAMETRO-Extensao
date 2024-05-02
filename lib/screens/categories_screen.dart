import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inclusao_digital/components/content_item_detail.dart';
import 'package:inclusao_digital/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  width: 180,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue, width: 2.0)),
                  child: const Center(
                    child: Text(
                      "INCLUSÃO DIGITAL",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            'assets/images/icon_app.jpeg',
            filterQuality: FilterQuality.high,
            height: 200,
          ),
        ),
        ...DUMMY_CONTENT.map((e) {
          return ContentItemDetail(e);
        }),
      ],
    );
  }
}
