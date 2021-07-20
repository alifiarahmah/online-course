import 'package:flutter/material.dart';

import 'course.dart';
import 'forum.dart';
import 'profile.dart';

class Template extends StatefulWidget {
  final String name;
  Template({this.name});

  @override
  _Template createState() => _Template();
}

// referensi: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
class _Template extends State<Template> {
  int idx = 0;
  static List<String> widgetNames = ["Courses", "Forum", "Profile"];
  static List<Widget> widgetList = [Course(), Forum(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text(widgetNames[idx]),
      ),

      body: Padding(
        padding: EdgeInsets.all(28),
        child: widgetList[idx],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,

        onTap: (i){
          setState((){
            idx = i;
          });
        },
        currentIndex: idx,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: 'Courses'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.forum),
              label: 'Forums'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
        ],
      ),
    );
  }
}