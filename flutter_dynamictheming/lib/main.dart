import 'package:flutter/material.dart';
import 'package:flutter_dynamictheming/Blocs/bgBloc.dart';
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
      stream: themeBloc.selectedTheme,
      initialData: ThemeData.light(),
      builder:(context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: snapshot.data,
          home: Home(),

        ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('UDesign'),
        ),
      ),
      body: StreamBuilder(
        stream: bgBloc.selectedBg,
        initialData: 'assets/bgchoice4.jpg',
        builder:(context,snapshot) => Container(
          child: DisplayOption(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(snapshot.data),
              fit: BoxFit.fill,
            )
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 20.0,
          ),

          onPressed: (){
            themeBloc.changeTheme.add(DesignedTheme.themeSelected());
            bgBloc.changeBg.add(DesignedTheme.backgroundImg);
          }
      ),
    );
  }
}


final bgBloc = BgBloc();
final themeBloc = ThemeBloc();