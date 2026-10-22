import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('He pulsado este número'),
        Text('$_contador', style: Theme.of(context).textTheme.headlineMedium),
        ElevatedButton(
            onPressed: _incrementarContador,
            child: Text('pulsa aquí para incrementar')
        ),
        ElevatedButton(
            onPressed: _decrementarContador,
            child: Text('pulsa aquí para decrementar')
        )
      ],
    );
  }

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }
  void _decrementarContador() {
    setState(() {
      _contador--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
