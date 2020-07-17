import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      
        title: Text('Serviços'),
        backgroundColor: Colors.tealAccent[700],        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/detalhe_servico.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                       'Nossos Serviços',
                      style: TextStyle(
                       fontSize: 30,
                       fontWeight: FontWeight.bold,
                       color: Colors.tealAccent[700]
                    ), // TextStyle
                    ), // Text
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'Consultoria',
                  style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                  ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'Cáculo de Preços',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  )
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'Acompanhamento de Projetos',
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