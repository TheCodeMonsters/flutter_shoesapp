import 'package:flutter/material.dart';
import 'package:flutter_shoesapp/src/pages/zapato_desc_page.dart';
import 'package:flutter_shoesapp/src/pages/zapato_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesApp',
      //home: ZapatoPage()

      home: ZapatoDescPage(),
    );
  }
}
