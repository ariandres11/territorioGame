import 'dart:math';
import 'package:flutter/material.dart';

class Dado extends StatefulWidget {
  final int numDado;
  Dado({Key? key, this.numDado = 1}) : super(key: key);

  @override
  _DadoState createState() => _DadoState();
}

class _DadoState extends State<Dado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Image.
      asset('assets/images/dice${widget.numDado}.png'),
    );
  }
}

class Juego extends StatefulWidget {
  @override
  _JuegoState createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {
  var rng = new Random();
  //Lista que contiene los valores posibles de cada dado
  //Para debug momentaneamente
  List<int> carasDado = [1, 2, 3];
  //int que determina la cantidad de dados a lanzar
  int cantidadDados = 2;

  int separador = 0;
  /*Tabla numeros posibles con significado

  * PINTAR
  * 1 = pintar 1
  * 2 = pintar 2
  * 3 = pintar 3
  * BORRAR
  * 4 = borrar 1
  * 5 = borrar 2
  * 6 = borrar 3
  * */

  List<int> lanzarDados() {

    var dadosFinales = <int>[];

    for(int i = 0; i < cantidadDados; i++) {
      var indiceAleatorio = rng.nextInt(carasDado.length);
      dadosFinales[i] = carasDado[indiceAleatorio];
    }
      //Llamar a una funcion que muestre las opciones por pantalla
      //Llamar a una funcion calcularTerritorio
      int territorioGanado = 0;
    //puntajes.add(puntaje);

    return dadosFinales;
  }

  void calcularTerritorio(){

  }





  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: lanzarDados,
          child: Text(
            'Lanzar dados',
            style: TextStyle(
              fontFamily: 'Freeman',
              fontSize: 40,
            ),
          ),
        ),
      ],
    );
  }
}
