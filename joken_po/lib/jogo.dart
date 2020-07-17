import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = AssetImage('images/padrao.png');
  var _mensagem = "Escolha uma opçao abaixo";

  void _opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print('Escolha do App: ' + escolhaApp);
    print('Escolha do Usuário: ' + escolhaUsuario);

    switch (escolhaApp) {
      case 'pedra':
        setState(() {
          this._imageApp = AssetImage('images/pedra.png');
        });
        break;
      case 'papel':
        setState(() {
          this._imageApp = AssetImage('images/papel.png');
        });
        break;
      case 'tesoura':
        setState(() {
          this._imageApp = AssetImage('images/tesoura.png');
        });
        break;
    }
    // Validação do ganhador
    // Usuário ganhador
    if (
    (escolhaUsuario == 'pedra' && escolhaApp == 'tesoura') ||
        (escolhaUsuario == 'tesoura' && escolhaApp == 'papel') ||
        (escolhaUsuario == 'papel ' && escolhaApp == 'pedra')
    ) {
      setState((){
        this._mensagem = 'Parabéns!!! Você é o vencedor!';
      });

      // App ganhador
    } else if (
    (escolhaApp == 'pedra' && escolhaUsuario == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUsuario == 'papel') ||
        (escolhaApp == 'papel ' && escolhaUsuario == 'pedra')
    ) {
      setState(() {
        this._mensagem = 'Tente novamente!';
      });
    } else {
      setState(() {
        this._mensagem = 'Jogo empatado!';
      });
    }
  }
  @override
  // ignore: unused_element
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JokenPo'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black45
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image(image: _imageApp,),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _opcaoSelecionada('pedra'),
                child:Image.asset('images/pedra.png', height: 100,) ,
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada('papel'),
                child:Image.asset('images/papel.png', height: 100,) ,
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada('tesoura'),
                child:Image.asset('images/tesoura.png', height: 100,) ,
              ),
              /*
              Image.asset('images/pedra.png', height: 100,),
              Image.asset('images/papel.png', height: 100,),
              Image.asset('images/tesoura.png', height: 100,)
               */
            ],
          )
        ],
      ),
    );
  }
  }

