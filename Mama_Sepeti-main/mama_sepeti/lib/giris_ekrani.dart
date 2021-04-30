import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:mama_sepeti/anasayfa.dart';

import 'genelAraclar/genel_textform.dart';
import 'giris_alternatifleri/kullanici_giris_alternatif.dart';

class girisEkrani extends StatefulWidget {
  @override
  _girisEkraniState createState() => _girisEkraniState();
}

class _girisEkraniState extends State<girisEkrani> {
  bool sifremi = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "resimler/loginBg.png",
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //mama
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "MAMA",
                        style: mamaTextStyle(),
                      ),
                    ),
                    //sepeti
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "SEPETİ",
                        style: sepetTextStyle(),
                      ),
                    ),
                    //beyaz çizgi
                    Container(
                      width: double.infinity,
                      height: 10,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //hesabınız var mı
                    Text(
                      "Hesabınız var mı?",
                      style: hesabinizVarMi(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //hemen giriş yapın
                    Text(
                      "Hemen Giriş Yapın",
                      style: hemenGirisYap(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //e mail
                    genelTextFormField(
                      hint_text: "E-mail'inizi giriniz",
                      iconSecim: Icons.mail,
                      sifremi: false,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //şifre
                    genelTextFormField(
                      hint_text: "Şifrenizi giriniz",
                      sifremi: true,
                      iconSecim: Icons.lock,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //buton
                    Container(
                      width: 300,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          print("Giriş Yapıldı");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Anasayfa(),
                              ));
                        },
                        child: Text("Giriş Yap"),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        kullaniciGirisAlternatif(
                          degisken: Buttons.GoogleDark,
                          icerikText: "Google ile Giriş Yap",
                        ),
                        kullaniciGirisAlternatif(
                          degisken: Buttons.FacebookNew,
                          icerikText: "Facebook ile Giriş Yap",
                        )
                      ],
                    ),
                    Text(
                      "Henüz hesabın yok mu?",
                      style: TextStyle(color: Colors.white),
                    ),
                    FlatButton(
                      child: Text(
                        "Bir Hesap Oluştur",
                        style: birHesapOlusturTextStyle(),
                      ),
                      onPressed: () {
                        print("Hesap Oluştur");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
