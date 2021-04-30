import 'package:flutter/material.dart';

import 'genelAraclar/genel_textform.dart';

class bildirimler extends StatefulWidget {
  @override
  _bildirimlerState createState() => _bildirimlerState();
}

class _bildirimlerState extends State<bildirimler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FlutterColor("#314220"),
          automaticallyImplyLeading: false,
          title: Text(
            "Bildirimler",
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, letterSpacing: 1),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: FlutterColor("#67864A"),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Bildirimler
                bildirimlerWidget(
                  bildirimMesaji:
                      "Merkez Efendi Mama Sepeti Noktasında Mama Yardımına İhtiyaç Var!!!",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Hadi Şimdi Mama Yardımında Bulun ve Deneyim Puanını İkiye Katla!",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Unutma Fotoğraf Paylaşımları İnsanları Motive Etmene Yardımcı Olur...",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "En Son 25 Gün Önce Mama Yardımı Yaptınız Umarız İyisinizdir (:",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Hayvanlara karşı acımasız olan, iyi bir insan olamaz. Arthur Schopenhauer",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Hadi! Şimdi Mama Yardımı Yapmanın Tam Zamanı!!:",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Bir milletin büyüklüğü ve ahlaki gelişimi, hayvanlara olan davranış biçimi ile değerlendirilir. Mahatma gandhi",
                ),
                bildirimlerWidget(
                  bildirimMesaji:
                      "Kedileri eğitemezsiniz onlar sizi eğitir. - Allen ve Ivy Dodd",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
