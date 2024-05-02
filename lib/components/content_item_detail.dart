import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inclusao_digital/models/content_model.dart';
import 'package:inclusao_digital/utils/routes/app_routes.dart';

class ContentItemDetail extends StatelessWidget {
  final ContentModel model;

  ContentItemDetail(this.model);

  _selectContent(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.CONTENT_DETAILS, arguments: model);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: 335,
            child: InkWell(
              onTap: () => _selectContent(context),
              borderRadius: BorderRadius.circular(10),
              child: Card(
                  color: Color.fromRGBO(73, 104, 141, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 3,
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      model.titulo,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
