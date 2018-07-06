import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForTheme/for_primary_color.dart';

class DisplayOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          PrimaryColorOptions(),

          Divider(),


        ],
      ),
    );
  }
}
