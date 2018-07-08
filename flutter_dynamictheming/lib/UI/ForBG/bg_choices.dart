import 'package:flutter/material.dart';

class BgChoices extends StatelessWidget {
  final String str;
  BgChoices(this.str);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        child: Container(
          height: 150.0,
          width: 120.0,
          child: Image.asset(str),
        ),
      ),
    );
  }
}
