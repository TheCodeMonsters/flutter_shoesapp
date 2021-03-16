import 'package:flutter/material.dart';
import 'package:flutter_shoesapp/src/widgets/botton_naranja.dart';
import 'package:flutter_shoesapp/src/widgets/custom_widgets.dart';

class ZapatoDescPage extends StatelessWidget {
  /// Static named route for page
  static const String route = 'ZapatoDesc';

  /// Static method to return the widget as a PageRoute
  static Route go() =>
      MaterialPageRoute<void>(builder: (_) => ZapatoDescPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ZapatoSizePreview(fullScreen: true),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                ),
                _MontoBuyNow(),
                _ColoresYMas()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class _ColoresYMas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(left: 90, child: _BottonColor(Color(0xffC6D642))),
                Positioned(left: 60, child: _BottonColor(Color(0xffFFAD29))),
                Positioned(left: 30, child: _BottonColor(Color(0xff2099F1))),
                _BottonColor(Color(0xff364D56)),
              ],
            ),
          ),
          // Spacer(),
          BottonNaranja(
            texto: 'More related items',
            alto: 30,
            ancho: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _BottonColor extends StatelessWidget {
  final Color color;

  const _BottonColor(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          children: [
            Text('\$100',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Spacer(),
            BottonNaranja(texto: 'Buy Now', ancho: 120, alto: 40),
          ],
        ),
      ),
    );
  }
}
