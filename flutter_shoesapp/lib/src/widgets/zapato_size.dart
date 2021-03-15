import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  const ZapatoSizePreview();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            // Zapatos con si nombre
            _ZapatosConZombra()
            // TODO Tallas
          ],
        ),
      ),
    );
  }
}

class _ZapatosConZombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ZapatoSombra()),
          Image(
            image: AssetImage('assets/imgs/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}