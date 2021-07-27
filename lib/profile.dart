import 'package:dicodingflutter/main.dart';
import 'package:flutter/material.dart';

import 'loginregister.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          ProfileHead(),
          Container(
            child: Column(
              children: [
                LongButton(
                  label: "Log Out",
                  bgcolor: Colors.red,
                  color: Colors.white,
                  to: Landing()
                )
              ],
            ),
          )
        ]
    );
  }
}

class ProfileHead extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(Icons.person, size: 50),
            radius: 40,
          ),

          SizedBox(height: 24),

          Text(
            "Firstname Lastname",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),

          SizedBox(height: 30),

          Text("Bio"),

          SizedBox(height: 30),

        ],
        )
    );
  }
}