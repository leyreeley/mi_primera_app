import 'package:flutter/material.dart';

class Fichapersonaje extends StatefulWidget {
  const Fichapersonaje({super.key, required this.title});

  final String title;

  @override
  State<Fichapersonaje> createState() => _FichapersonajeState();
}

class _FichapersonajeState extends State<Fichapersonaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // 1. Añadimos el PADDING requerido por el ejercicio para que no se pegue a los bordes
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // 2. Corregido el error de sintaxis (.center por MainAxisAlignment.center)
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Reto 1 bloque 1
              Image.asset("assets/emoji.jpg", width: 200, height: 200),
              const SizedBox(height: 16),

              const Text(
                "Centurión",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Guerrero",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                ),
              ),
              const SizedBox(height: 32), // Separador antes de los stats

              // 3. Aplicamos EXPANDED en cada fila
              Row(
                children: [
                  // El Expanded hace que este texto ocupe todo el ancho posible...
                  const Expanded(
                    child: Text(
                      "Vida:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // ...empujando este segundo texto a la derecha del todo.
                  const Text(
                    "70 / 100",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Ataque:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "25",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Defensa:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "15",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
