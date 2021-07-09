import 'package:flutter/material.dart';

import 'main.dart'; // LongButton

class MyCourseTile extends StatelessWidget {
  final String title;
  final int percentage;
  MyCourseTile({this.title, this.percentage});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
            onTap: (){},
            child: Container(
                width: MediaQuery.of(context).size.width * 10,
                height: MediaQuery.of(context).size.width * 0.25,
                padding: EdgeInsets.all(14),
                child: Row(
                  children: [

                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                title,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                )),

                            Text(
                              "Progress belajar: $percentage%",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 14
                              ),
                            ),

                            Expanded(child: SizedBox())
                          ]
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.width * 0.2,
                      width: MediaQuery.of(context).size.width * 0.25,
                      color: Colors.grey,
                      child: Icon(Icons.photo),
                    ),

                  ],
                )
            )
        )
    );
  }
}

class MyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Courses",
          style: TextStyle(
            fontSize: 18,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: [

              MyCourseTile(title: "Matematika Dasar tingkat Lanjut", percentage: 50),
              MyCourseTile(title: "Merawat Kucing untuk Pemula", percentage: 10),
              MyCourseTile(title: "OOP dengan bahasa Whitespace", percentage: 42)

            ],
          ),
        )
      ],
    );
  }
}

// https://flutter.dev/docs/cookbook/design/tabs
class AllCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("hehehiho"),
    );
  }
}

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          MyCourse(),

          LongButton(label: "See Catalog", to: AllCourse())

        ]
    );
  }
}

