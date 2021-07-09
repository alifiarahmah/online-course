import 'package:flutter/material.dart';

import 'main.dart';
import 'template.dart';
import 'login.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [

              TextField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                )
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),

              LongButton(
                to: Template(),
                label: "Register",
                color: Colors.white,
                bgcolor: Colors.black
              ),

              LongButton(
                  to: Login(),
                  label: "Log In",
                  color: Colors.black,
                  bgcolor: Colors.white
              )

            ],
          ),
        ),
      ),
    );
  }
}