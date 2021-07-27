import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  final String title;
  final int percentage;
  CourseTile({this.title, this.percentage});

  @override
  Widget build(BuildContext context) {

    return Card(
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetails(
                  name: title,
                  progress: percentage,
                )
              )
            );
          },
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

// TODO: buat CourseGrid

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if (constraints.maxWidth <= 600) {
          return CourseListView();
        } else {
          return CourseGridView();
        }
      }
    );
  }
}

class CourseListView extends StatelessWidget {
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

class CourseGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        CourseTile(title: "Matematika Dasar tingkat Lanjut", percentage: 50),
        CourseTile(title: "Merawat Kucing untuk Pemula", percentage: 10),
        CourseTile(title: "OOP dengan bahasa Whitespace", percentage: 42),
        CourseTile(title: "Pengantar Teori Astrologi", percentage: 0)
      ],
    );
  }
}

class CourseDetails extends StatelessWidget {
  final String name;
  final int progress;
  CourseDetails({this.name, this.progress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Course Details"),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(height: 10),

          Text("Progress belajar: $progress%"),


        ],
      )
    );
  }
}