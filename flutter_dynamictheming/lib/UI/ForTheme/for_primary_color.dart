import 'package:flutter/material.dart';

class PrimaryColorOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(

            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            child: Text(
              'Primary Color',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Row(
            children: <Widget>[
             _option(Colors.green),

             _option(Colors.amber),

             _option(Colors.red),

             _option(Colors.deepPurple),

              _option(Colors.pinkAccent)
            ],
          ),
        ]
    );
  }
}

Widget _option(Color color){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: IconButton(
      icon: Icon(
        Icons.add_circle,
        color: color,
        size: 40.0,
      ),
      onPressed: (){

      },
    ),
  );
}