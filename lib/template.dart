import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'course.dart';
import 'forum.dart';
import 'profile.dart';

class Template extends StatefulWidget {
  @override
  _Template createState() => _Template();
}

// referensi: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
class _Template extends State<Template> {
  int idx = 0;
  static List<String> widgetNames = ["Dashboard", "Courses", "Forum", "My Profile"];
  static List<Widget> widgetList = [Dashboard(), Course(), Forum(), Profile()];

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
            icon: Icon(Icons.home),
            label: 'Dasboard',
          ),
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
              label: 'My Profile'
          )
        ],
      ),
    );
  }
}