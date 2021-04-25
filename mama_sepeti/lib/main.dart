import 'package:flutter/material.dart';
import 'package:mama_sepeti/giris_ekrani.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mama Sepeti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: girisEkrani(),
    );
  }
}
