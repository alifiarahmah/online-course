import 'package:flutter/material.dart';

import 'register.dart';
import 'login.dart';
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

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.menu_book, size: 100, color: Colors.blue,),

              Text(
                "Online Course App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
              ),

              Text(
                "Learn anywhere with us",
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18)
              ),

              SizedBox(height: 50),

              LongButton(
                label: "Register",
                to: Register(),
                color: Colors.white,
                bgcolor: Colors.blue
              ),

              SizedBox(
                height: 20,
              ),

              LongButton(
                  label: "Log In",
                  to: Login(),
                  color: Colors.black,
                  bgcolor: Colors.white
              ),

            ],
          )
        ),
      )
    );
  }
}

class LongButton extends StatelessWidget{
  String label;
  Widget to;
  Color color, bgcolor;
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