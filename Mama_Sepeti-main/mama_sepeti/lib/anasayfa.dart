import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mama_sepeti/akis.dart';
import 'package:mama_sepeti/ara.dart';
import 'package:mama_sepeti/bildirimler.dart';
import 'package:mama_sepeti/profil.dart';

import 'genelAraclar/genel_textform.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int _aktifNo = 0;
  PageController sayfaKumandasi;

  @override
  void initState() {
    super.initState();
    sayfaKumandasi = PageController();
  }

  @override
  void dispose() {
    sayfaKumandasi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
        onPageChanged: (acilanSayfaNo) {
          setState(() {
            _aktifNo = acilanSayfaNo;
          });
        },
        controller: sayfaKumandasi,
        children: [
          Akis(),
          Arama(),
          bildirimler(),
          Profil(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: FlutterColor("#314220")),
        child: BottomNavigationBar(
          iconSize: 30.0,
          currentIndex: _aktifNo,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Akış"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Mama Noktası Ara"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Bildirimler"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
          ],
          onTap: (secilenSayfaNo) {
            setState(() {
              sayfaKumandasi.jumpToPage(secilenSayfaNo);
            });
          },
        ),
      ),
    );
  }
}
