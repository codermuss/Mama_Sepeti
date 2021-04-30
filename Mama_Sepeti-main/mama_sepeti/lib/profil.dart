import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'genelAraclar/genel_textform.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: FlutterColor("#314220"),
        title: Center(
          child: Text(
            "Profil",
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, letterSpacing: 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("resimler/kedi.jpg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 200.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 48,
                            backgroundImage: AssetImage("resimler/kedi.jpg"),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Kedi Mari",
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                  ],
                                ),
                                Text("Konum"),
                              ],
                            ),
                          ),
                          FloatingActionButton(
                            backgroundColor: Colors.grey,
                            onPressed: () {},
                            child: Icon(Icons.edit),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "54",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Mama Yardımı",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "22",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "Seviye",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Divider(
                      height: 3.0,
                      color: Colors.black,
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "54",
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Mama Yardımı",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "22",
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Seviye",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        butonlar("Bağış Yap"),
                        butonlar("Fotoğraf Ekle"),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                    Divider(
                      height: 3.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32.0, vertical: 12.0),
                      child: Text(
                        "Resimler",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 28.0,
                          ),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                          resimler("resimler/kedi.jpg"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding resimler(String resimYolu) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          resimYolu,
          height: 150.0,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Container butonlar(String isim) {
    return Container(
      height: 45.0,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              color: FlutterColor("#67864A"),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              isim,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
