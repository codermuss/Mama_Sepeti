import 'package:flutter/material.dart';
import 'package:mama_sepeti/gonderi_karti.dart';

import 'genelAraclar/genel_textform.dart';

class Akis extends StatefulWidget {
  @override
  _AkisState createState() => _AkisState();
}

class _AkisState extends State<Akis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: FlutterColor("#314220"),
        centerTitle: true,
        title: Text(
          "Akış",
          style:
              TextStyle(color: Colors.white, fontSize: 30.0, letterSpacing: 1),
        ),
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 30.0,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              color: FlutterColor("#67864A"),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 10.0,
              ),
              GonderiKarti(
                ad: "Onur",
                soyad: "Yaşar",
                aciklama: "Mükemmel Bir Gündü!",
                resimYolu: "resimler/anaSayfaShuffle_1.png",
              ),
              GonderiKarti(
                ad: "Mustafa",
                soyad: "Yılmaz",
                aciklama:
                    "En iyi arkadaşlarımız; hayvanlardır. Ne soru sorarlar, ne de kusur kabahat bulurlar. -Mustafa Yılmaz",
                resimYolu: "resimler/anaSayfaShuffle_2.jpg",
              ),
              GonderiKarti(
                ad: "Levent",
                soyad: "Gazalcı",
                aciklama:
                    "Kedi düz yazıdır, köpek ise bir şiir. -Levent Gazalcı",
                resimYolu: "resimler/anaSayfaShuffle_4.jpg",
              ),
              GonderiKarti(
                ad: "Sude",
                soyad: "Ak",
                aciklama:
                    "Ruhunda hayvan sevgisi olmayan insandan uzaklaş. -Sude Ak",
                resimYolu: "resimler/anaSayfaShuffle_3.jpg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
