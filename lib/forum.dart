import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Thread(
          judul: "ASK: Implementasi class inheritance pada Whitespace",
          author: "Anonymous",
          konteks: "Bagaimana caranya?",
          likes: 1,
        ),
        Thread(
          judul:
              "ERROR: Laporan Error pada Ujian Akhir Matematika Dasar tingkat Lanjut",
          author: "Anonymous",
          konteks: "Terjadi pada tanggal 30 Februari 2021, tepatnya pukul 20:21.",
          likes: 0,
        )
    ]);
  }
}

class ForumDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 600,
      child: Forum(),
    );
  }
}

class Thread extends StatefulWidget {
  final String judul, author, konteks;
  final int likes;
  Thread({this.judul, this.author, this.konteks, this.likes});

  @override
  _Thread createState() => _Thread(
      judul: judul, author: author, konteks: konteks, likes: this.likes);
}

class _Thread extends State<Thread> {
  final String judul, author, konteks;
  int likes;
  _Thread({this.judul, this.author, this.konteks, this.likes});

  bool up = false, down = false;

  @override
  Widget build(BuildContext context) {
    void upping() {
      // TODO: cari cara biar cuma bisa liek sekali + atas ato bawah
      if (!up) {
        setState(() {
          up = true;
          down = false;
          likes++;
        });
      } else {
        setState(() {
          likes--;
          up = false;
          down = false;
        });
      }
    }

    void downing() {
      if (!down) {
        setState(() {
          up = false;
          down = true;
          likes--;
        });
      } else {
        setState(() {
          likes++;
          up = false;
          down = false;
        });
      }
    }

    return Card(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(10),
          width: (MediaQuery.of(context).size.width <= 600)? MediaQuery.of(context).size.width * 10: 20,
          child: Row(
            children: [
            Expanded(
              child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(judul,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("By: " + author),
                  Text(
                    konteks,
                    style: TextStyle(color: Colors.grey),
                  )
              ]),
            ),
            Column(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.arrow_drop_up,
                    color: up ? Colors.blue : Colors.grey),
                  onPressed: upping,
                ),
                Text(
                  "$likes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.arrow_drop_down,
                    color: down ? Colors.blue : Colors.grey),
                  onPressed: downing,
                ),
              ],
            )
          ],
      ),
    )));
  }
}
