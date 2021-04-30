import 'package:flutter/material.dart';

import 'genelAraclar/genel_textform.dart';

class Arama extends StatefulWidget {
  @override
  _AramaState createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterColor("#314220"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Mama Noktaları",
          style:
              TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 1),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Image.asset(
          "resimler/harita.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
