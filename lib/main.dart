import 'package:flutter/material.dart';

import 'template.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      home: Template(), // TODO: ganti freely
    );
  }
}

// COMPONENTS

class LongButton extends StatelessWidget{
  final String label;
  final Widget to;
  final Color color, bgcolor;
  LongButton({this.label, this.to, this.color, this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => to),
        );
      },
      child: Text(label,
          style: TextStyle(color: color)
      ),
      style: ElevatedButton.styleFrom(
        primary: bgcolor,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.25,
            vertical: 20
        ),
      ),
    );
  }
}