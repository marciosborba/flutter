import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {

    var imagem;

    if(widget.valor == 'cara'){
      imagem = 'images/moeda_cara.png';
    }else{
      imagem = 'images/moeda_coroa.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(imagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset('images/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}