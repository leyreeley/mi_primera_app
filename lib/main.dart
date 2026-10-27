import 'package:flutter/material.dart';
import 'package:mi_primera_app/contador.dart';
import 'package:mi_primera_app/widget_saludar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      home: const MyHomePage(title: 'DAM 2 PMDM'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Estructura de la pantalla
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Spacer(),
            Text(
              "Hola mundo mi primera app!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontSize: 24.0,
                overflow: TextOverflow.ellipsis, //para q ponga puntos suspensivos si el texto no entra
              ),
            ),
            /*const Text('Tú has pulsado el botón este número de veces:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Icon(Icons.star, size: 40, color: Colors.amber),
                  onTap: () {
                    print('1 estrella');
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.star, size: 40, color: Colors.amber),
                  onTap: () {
                    print('2 estrellas');
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.star, size: 40, color: Colors.amber),
                  onTap: () {
                    print('3 estrellas');
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.star, size: 40, color: Colors.amber),
                  onTap: () {
                    print('4 estrellas');
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.star, size: 40, color: Colors.amber),
                  onTap: () {
                    print('5 estrellas');
                  },
                ),
              ],
            ),
            Text(
              "Estoy arriba del saludo",
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 18.0,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
            WidgetSaludar(nombre: 'Michi'),
            // Meto la clase Contador dentro de un Expanded.
            // Esto hace que ocupe todo el espacio que sobra en la pantalla
            // permitiendo que los botones se vayan hasta abajo del todo.
            Image.asset("assets/emoji.jpg", width: 200, height: 200),
            //hay q añadirlo en el pubspec.yaml
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint("Elevated button");
                  },
                  child: Text("ElevatedButton"),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("Text button");
                  },
                  child: Text("TextButton"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    debugPrint("Outlined button");
                  },
                  child: Text("OutlinedButton"),
                ),
                IconButton(
                  onPressed: () {
                    debugPrint("Icon button");
                  },
                  icon: Text("IconButton"),
                ),
              ],
            ),
            Expanded(child: Contador()),
          ],
        ),
      ),
    );
  }
}
