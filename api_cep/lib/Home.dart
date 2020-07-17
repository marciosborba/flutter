import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCep = TextEditingController();
  String _endereco = "Endereço";
  
  _recuperarCep() async {

    String cepDigitado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepDigitado}/json/";
    http.Response response;

    response = await http.get(url);

    Map<String, dynamic> retorno = json.decode( response.body );
    String rua = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String cidade = retorno["localidade"];
    String uf = retorno["uf"];

    setState(() {
      _endereco = "${rua}, ${complemento}, ${bairro}, ${cidade}, ${uf} ";
    });

    print(
      "Resposta logradouro: ${rua} complemento: ${complemento} bairro: ${bairro} "
    );

    //print("resposta: " + response.statusCode.toString() );
    //print("resposta: " + response.body );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de API"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep: ex: 05428200"
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87
              ),
              controller: _controllerCep,
            ),
            RaisedButton(
              child: Text("Clique aqui"),
              onPressed: _recuperarCep,
            ),
            Text( _endereco )
          ],
        ),
      ),
    );
  }
}
