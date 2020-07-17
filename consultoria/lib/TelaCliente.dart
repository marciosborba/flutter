import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      
        title: Text('Clientes'),
        backgroundColor: Colors.lime[700],        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/detalhe_cliente.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Nossos Clientes',
                        style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                         color: Colors.lime[700]
                        ), // TextStyle
                    ), // Text
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Image.asset('images/cliente1.png')
              ),
              Text(
                  'Empresa de Software',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent
                  ),
                  ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Image.asset('images/cliente2.png')
              ),
              Text(
                  'Empresa de Auditoria',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}