import 'package:flutter/material.dart';
import 'package:flutter_shoesapp/src/models/zapato_model.dart';
import 'package:flutter_shoesapp/src/pages/zapato_page.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new ZapatoModel() ),
      ],

      child: MyApp(),
    )
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, title: 'ShoesApp',

      home: ZapatoPage(),

      //home: ZapatoDescPage(),
    );
  }
}
