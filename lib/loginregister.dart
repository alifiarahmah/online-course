import 'package:dicodingflutter/main.dart';
import 'package:dicodingflutter/template.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {

  bool showPassword = false;
  void togglePass(){
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [

          SizedBox(height: 50),

          Column(
              children: [

                Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      TextField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: showPassword? Colors.blue: Colors.grey,
                              ),
                              onPressed: togglePass,
                            )
                        ),

                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                LongButton(
                  to: Template(),
                  label: "Register",
                )
              ],
          )
        ],
      )
    );
  }
}

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {

  bool showPassword = false;
  void togglePass(){
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView(
          children: [

            SizedBox(height: 50),

            Column(
              children: [

                Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username/Email',
                        ),
                      ),
                      TextField(
                        obscureText: !showPassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: showPassword? Colors.blue: Colors.grey,
                              ),
                              onPressed: togglePass,
                            )
                        ),

                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                LongButton(
                  to: Template(),
                  label: "Register",
                )
              ],
            )
          ],
        )
    );
  }
}