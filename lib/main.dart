import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colorear GridView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> _colors = List.generate(20, (index) => Colors.white); // Lista de colores para cada cuadrado

  void _changeColor(int index) {
    setState(() {
      _colors[index] = Colors.blue; // Cambia el color del cuadrado en la posición 'index'
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colorear GridView'),
      ),
      body:
      GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Número de columnas
        ),
        itemCount: _colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => _changeColor(index), // Llama a la función al presionar
            child: Container(
              decoration: BoxDecoration(
                color: _colors[index], // Color que cambia
                border: Border.all(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
