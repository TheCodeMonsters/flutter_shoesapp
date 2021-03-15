import 'package:flutter/material.dart';
import 'package:flutter_shoesapp/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar('For You'),
          SizedBox(height: 20),
          ZapatoSizePreview(),
        ],
      ),
    );
  }
}
