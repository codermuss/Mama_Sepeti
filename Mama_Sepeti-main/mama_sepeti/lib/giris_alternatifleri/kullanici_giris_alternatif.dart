import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class kullaniciGirisAlternatif extends StatelessWidget {
  Buttons degisken;
  String icerikText;
  kullaniciGirisAlternatif({this.degisken, this.icerikText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        child: SignInButton(
          degisken,
          text: icerikText,
          onPressed: () {},
        ),
      ),
    );
  }
}
