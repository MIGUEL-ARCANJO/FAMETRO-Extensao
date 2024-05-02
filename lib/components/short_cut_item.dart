import 'package:flutter/material.dart';
import 'package:inclusao_digital/models/short_curts_model.dart';
import 'package:inclusao_digital/utils/routes/app_routes.dart';

class ShortCutItem extends StatelessWidget {
  final ShortCutsModel shortCutsModel;

  ShortCutItem(this.shortCutsModel);

  _selectModal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.SHORT_CUT_DETAILS, arguments: shortCutsModel);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 310,
          child: InkWell(
            onTap: () => _selectModal(context),
            borderRadius: BorderRadius.circular(20),
            child: Card(
                color: shortCutsModel.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 3,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    shortCutsModel.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
    ;
  }
}
