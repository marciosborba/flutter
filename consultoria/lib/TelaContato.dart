import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      
        title: Text('Contato'),
        backgroundColor: Colors.green[400],        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/detalhe_contato.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                       'Contatos',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[600]
                    ), // TextStyle
                    ), // Text
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'contato@consultoria.com.br',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'Telefone (11) 3525-8596',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'Celular (11) 99586-5232',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                  ),
              ),
            ],
          ), 
        ), 
      ),
    );
  }
}