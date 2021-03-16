import 'package:flutter/material.dart';

class BottonNaranja extends StatelessWidget {
  final String texto;
  final double alto;
  final double ancho;
  final Color color;

  const BottonNaranja({@required this.texto, this.alto = 50, this.ancho = 150, this.color = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.ancho,
      height: this.alto,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: this.color
      ),
      child: Text(
        '$texto',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
