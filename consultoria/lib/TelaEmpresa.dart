import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(      
        title: Text('Empresa'),
        backgroundColor: Colors.deepOrange,        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('images/detalhe_empresa.png'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                       'Sobre a Empresa',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange
                    ), // TextStyle
                    ), // Text
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top:16),
                child: Text(
                  'A tecnologia é indispensável para toda organização, seja no seu início ou na continuidade de todos os modelos de negócio num mercado cada vez mais competitivo, digital e interconectado'
                  'Conhecer ferramentas, produtos e serviços que ofereçam soluções inteligentes, modernas e seguras é fundamental para se manter atualizados com as melhores práticas internacionais'  
                  'Estamos continuamente nos atualizando com as novas tecnologias afim de proporcionar efetiva redução de custos e despesas com recursos tecnológicos. Menos investimento nem sempre significa menos recursos'
                  'A tecnologia é indispensável para toda organização, seja no seu início ou na continuidade de todos os modelos de negócio num mercado cada vez mais competitivo, digital e interconectado'
                  'Conhecer ferramentas, produtos e serviços que ofereçam soluções inteligentes, modernas e seguras é fundamental para se manter atualizados com as melhores práticas internacionais'  
                  'Estamos continuamente nos atualizando com as novas tecnologias afim de proporcionar efetiva redução de custos e despesas com recursos tecnológicos. Menos investimento nem sempre significa menos recursos'
                  'A tecnologia é indispensável para toda organização, seja no seu início ou na continuidade de todos os modelos de negócio num mercado cada vez mais competitivo, digital e interconectado'
                  'Conhecer ferramentas, produtos e serviços que ofereçam soluções inteligentes, modernas e seguras é fundamental para se manter atualizados com as melhores práticas internacionais'  
                  'Estamos continuamente nos atualizando com as novas tecnologias afim de proporcionar efetiva redução de custos e despesas com recursos tecnológicos. Menos investimento nem sempre significa menos recursos'
                  'A tecnologia é indispensável para toda organização, seja no seu início ou na continuidade de todos os modelos de negócio num mercado cada vez mais competitivo, digital e interconectado'
                  'Conhecer ferramentas, produtos e serviços que ofereçam soluções inteligentes, modernas e seguras é fundamental para se manter atualizados com as melhores práticas internacionais'  
                  'Estamos continuamente nos atualizando com as novas tecnologias afim de proporcionar efetiva redução de custos e despesas com recursos tecnológicos. Menos investimento nem sempre significa menos recursos',
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ), 
        ), 
      ),
    );
  }
}