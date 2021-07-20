import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Thread(
            judul: "ASK: Apa kucing tenggelam bisa diselamatkan?",
            author: "Anonymous",
            konteks: "Kucing tenggelam 3 hari apa bisa diselamatkan?",
            likes: 45,
          )
        ]
    );
  }
}

class Thread extends StatefulWidget {
  final String judul, author, konteks;
  final int likes;
  Thread({this.judul, this.author, this.konteks, this.likes});

  @override
  _Thread createState() =>
      _Thread(
          judul: judul,
          author: author,
          konteks: konteks,
          likes: this.likes
      );
}

class _Thread extends State<Thread> {
  final String judul, author, konteks;
  int likes;
  _Thread({this.judul, this.author, this.konteks, this.likes});

  bool up = false, down = false;

  @override
  Widget build(BuildContext context) {

    void upping(){
      if(!up){
        setState(() {
          up = true;
          down = false;
          likes++;
        });
      } else{
        setState(() {
          up = false;
          likes--;
        });
      }
    }

    void downing(){
      if(!down){
        setState(() {
          up = false;
          down = true;
          likes--;
        });
      } else{
        setState(() {
          down = false;
          likes++;
        });
      }
    }

    return Card(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        judul,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    Text("By: " +  author),
                    Text(
                      konteks,
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    )

                  ]
                ),
              ),

              Column(
                children: [
                  IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.arrow_drop_up,
                      color: up? Colors.blue: Colors.grey
                    ),
                    onPressed: upping,
                  ),
                  Text(
                    "$likes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: (up || down)? Colors.blue: Colors.black
                    ),
                  ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(
                        Icons.arrow_drop_down,
                        color: down? Colors.blue: Colors.grey
                    ),
                    onPressed: downing,
                  ),
                ],
              )

            ],
          ),
        )
      )
    );
  }

}