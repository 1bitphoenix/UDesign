import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/UI/DesignedTheme.dart';
import 'package:flutter_dynamictheming/UI/displayOptions.dart';
import 'package:flutter_dynamictheming/Blocs/themeBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  StreamBuilder(
      stream: bloc.selectedTheme,
      initialData: ThemeData.light(),
      builder:(context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('UDesign'),
              ),
            ),
            body: DisplayOption(),

            floatingActionButton: FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 20.0,
              ),

                onPressed: (){
                  bloc.changeTheme.add(DesignedTheme.themeSelected());
                }
            ),
          ),

        ),
    );
  }
}

final bloc = ThemeBloc();