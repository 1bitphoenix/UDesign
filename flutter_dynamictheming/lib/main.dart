import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/displayOptions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Center(
        child: Text('UDesign'),
        ),
      ),
        body: DisplayOption(),
      ),
    );
  }
}