import 'package:flutter/material.dart';

//Un boton para que cuando lo puses un texto aumente su tamaño
class IncrementarTamanio extends StatefulWidget {
  const IncrementarTamanio({super.key});

  @override
  State<IncrementarTamanio> createState() => _IncrementarTamanioState();
}

class _IncrementarTamanioState extends State<IncrementarTamanio> {
  double _tamanio = 10.0;

  void _incrementarTamanio() {
    setState(() {
      _tamanio += 10.0;
    });
  }

  void _decrementarTamanio() {
    setState(() {
      if (_tamanio > 10) {
        _tamanio -= 10.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Tamaño', style: TextStyle(fontSize: _tamanio)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _incrementarTamanio,
              child: const Icon(Icons.add),
            ),
            //añado un sizedBox pa dar un poco de espacio entre medias
            const SizedBox(width: 10),
            ElevatedButton(
                onPressed: _decrementarTamanio,
                child: const Icon(Icons.remove))
          ]
        ),
      ],
    );
  }
}
