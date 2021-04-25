import 'package:flutter/material.dart';

class girisEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Opacity(
                opacity: 0.8,
                child: Image.asset(
                  "resimler/kedi.jpg",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                //boxShadow: ,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.green.withOpacity(0.1),
                      Colors.lightGreen[900],
                      Colors.lightGreen[900],
                    ],
                    stops: [
                      0.0,
                      0.4,
                      1.0
                    ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      "Hesabınız var mı?",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      "Hemen Giriş Yapın",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 185,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MAMA",
                    style: TextStyle(
                        fontSize: 24, color: Colors.white, letterSpacing: 15),
                  ),
                  Text(
                    "SEPETİ",
                    style: TextStyle(
                        fontSize: 54, color: Colors.white, letterSpacing: 15),
                  ),
                  Container(
                    height: 5,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
