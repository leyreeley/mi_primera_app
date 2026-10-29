import 'package:flutter/material.dart';

class Listaspage extends StatefulWidget {
  const Listaspage({super.key, required this.title});

  final String title;

  @override
  State<Listaspage> createState() => ListaspageState();
}

class ListaspageState extends State<Listaspage> {
  final List<String> miLista = List.generate(30, (i) => "Elemento ${(i+1)}");  //Manera de generar la lista sin tener q meter el for en un metodo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: .center,
            children: [
              const SizedBox(height: 15),
              //Ejercicio 2 bloque 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon (Icons.home),
                  Icon (Icons.search),
                  Icon (Icons.person)
                ],
              ),
              const SizedBox(height: 15),
              //Ejercicio 3 bloque 1
              Row(
                children: [
                  Expanded(flex: 1, child: Container(color: Colors.red, height: 100,)),
                  Expanded(flex: 2, child: Container(color: Colors.greenAccent, height: 100,)),
                  Expanded(flex: 1, child: Container(color: Colors.green, height: 100,))
                ],
              ),
              const SizedBox(height: 15),
              //Ejercicio 5 bloque 1
              Expanded(    //para q ocupe solo el espacio q sobra
                child: ListView.builder(
                  itemCount: miLista.length,
                  itemBuilder: (context, i) => ListTile(
                    leading: Icon(Icons.star, color: Colors.amber,),
                    title: Text(miLista[i]),)
                )
              )
            ]
        )
      )
    );
  }
}
