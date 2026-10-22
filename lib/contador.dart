import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int _contador = 0;

  void _incrementarContador() {
    debugPrint("incrementar");
    setState(() {
      _contador++;
    });
  }
  void _decrementarContador() {
    debugPrint("decrementar");
    setState(() {
      _contador--;
      if (_contador < 0) {
        _contador = 0;
      }
    });
  }
  void _multiplicarContador() {
    debugPrint("muliplicar");
    setState(() {
      _contador *= 2;
    });
  }
  void _dividirContador() {
    debugPrint("dividir");
    setState(() {
      if (_contador > 0) {
        _contador ~/= 2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    return Column(
      children: [
        const Text('He pulsado este número'),
        Text(
            '$_contador',
            style: TextStyle(
              color: _contador >= 20 ? Colors.red : Colors.black,
              fontSize: _contador >= 10 ? 25.0 : 20.0
            )
        ),

        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // Empuja los botones hacia los extremos
            children: [
              FloatingActionButton(
                onPressed: _decrementarContador,
                tooltip: 'Decrementar',
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: _multiplicarContador,
                tooltip: 'Multiplicar',
                child: const Icon(Icons.close),
              ),
              FloatingActionButton(
                onPressed: _dividirContador,
                tooltip: 'Dividir',
                child: const Text(
                  '÷',
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400),
                ),
              ),
              FloatingActionButton(
                onPressed: _incrementarContador,
                tooltip: 'Incrementar',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ],
    );
  }


}
