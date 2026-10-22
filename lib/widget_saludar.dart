import 'package:flutter/material.dart';

class WidgetSaludar extends StatelessWidget {
  const WidgetSaludar({super.key, required this.nombre});
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Text('Saludos de ${nombre}');
  }
}
