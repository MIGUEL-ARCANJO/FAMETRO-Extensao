import 'package:flutter/material.dart';

class ShortCutDetail extends StatelessWidget {
  final List<String> shortCutsList;
  final List<String> namesList;
  final Color color;
  // final String a;
  ShortCutDetail(this.namesList, this.shortCutsList, this.color);

  Widget _builderShortCuts() {
    return _builderContainer(ListView.builder(
        itemCount: shortCutsList.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  child: Text("${(index + 1)}"),
                ),
                title: Text(
                  namesList[index],
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: Text(shortCutsList[index],
                    style: TextStyle(fontWeight: FontWeight.w400)),
              ),
              const Divider()
            ],
          );
        }));
  }

  Widget _builderContainer(Widget child) {
    return Container(
        width: double.infinity,
        height: 500,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Card(child: child));
  }

  @override
  Widget build(BuildContext context) {
    return _builderShortCuts();
  }
}
