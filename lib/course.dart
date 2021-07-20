import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final String title;
  final int percentage;
  CourseTile({this.title, this.percentage});

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
                                )
                            ),

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

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Column(
                  children: [

                    CourseTile(title: "Matematika Dasar tingkat Lanjut", percentage: 50),
                    CourseTile(title: "Merawat Kucing untuk Pemula", percentage: 10),
                    CourseTile(title: "OOP dengan bahasa Whitespace", percentage: 42),
                    CourseTile(title: "Pengantar Teori Astrologi", percentage: 0)

                  ],
                ),
              )
            ],
          ),

        ]
    );
  }
}
