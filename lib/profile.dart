import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  Profile({this.name});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          ProfileHead(name: name)
        ]
    );
  }
}

class ProfileHead extends StatelessWidget {
  final String name;
  ProfileHead({this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            child: Icon(Icons.person, size: 50),
            radius: 40,
          ),

          Text(name) // TODO: ganti sesuai login
        ],
      ),
    );
  }
}