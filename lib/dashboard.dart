import 'package:flutter/material.dart';

import 'course.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        // Greetings
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello!")
                  // TODO: Full Name dari Input Controller
                ],
              ),
            ),
            CircleAvatar(child: Icon(Icons.person, size: 28), radius: 28)
          ],
        ),

        SizedBox(height: 24),

        MyCourse()

      ]
    );
  }
}