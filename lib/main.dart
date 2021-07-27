import 'package:flutter/material.dart';

import 'loginregister.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App',
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 200),
            Text(
              "Learn from anywhere!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50),
            LongButton(label: "Register", to: Register()),
            SizedBox(height: 25),
            LongButton(label: "Log In", to: Login())
          ],
        ),
      )
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
        if (to != null){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => to),
          );
        }
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