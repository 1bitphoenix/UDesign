import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/ForBG/bg_choices.dart';

class BackgroundImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all( 20.0),
          child: Text(
            'Choose Background',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BgChoices('assets/bgchoice1.jpg'),
            BgChoices('assets/bgchoice2.jpg'),
            BgChoices('assets/bgchoice3.jpg'),
          ],
        ),
        Row(

        ),
      ],
    );
  }
}
