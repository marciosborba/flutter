import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  var _frases = [
    'O apego é a raiz de todo sofrimento humano',
    'Todo medo termina quando percebemos que ele só existe na nossa mente',
    'Não existe amor sem liberdade e sem felicidade',
    'Tudo esta conectado ao todo',
  ];
  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.deepPurple)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/Treinador.png'),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.deepPurple
              ),
            ),
            RaisedButton(
              child: Text(
                  'Nova Frase',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.lightBlue,
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
