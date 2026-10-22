import 'package:flutter/material.dart';

class WidgetSaludar extends StatelessWidget {
  const WidgetSaludar({super.key, required this.nombre});
  final String nombre;

  @override
  Widget build(BuildContext context) {   //Build se usa SIEMPRE para pintar el widget
    return Text('Saludos de ${nombre}',
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.deepPurple,
      ),
    );
  }
}
