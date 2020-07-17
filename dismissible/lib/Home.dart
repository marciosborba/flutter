import 'package:flutter/material.dart';

class Home extends StatefulWidget {



  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List _tarefas = ['Acordar', 'Escovar os dentes', 'Tomar café', 'Meditar', 'Trabalhar'];
     String _nome = "Marcio";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors. purple,
        title: Text(_nome),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _tarefas.length,
                itemBuilder: (context, index){

                  final item = _tarefas[index];
                  return Dismissible(
                    background: Container(
                      color: Colors.green[600],
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                            )
                        ],
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red[600],
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    direction: DismissDirection.horizontal,
                    onDismissed: (direction){
                      if( direction == DismissDirection.endToStart){
                        print('Direção: endToStar');
                      }else if( direction == DismissDirection.startToEnd){
                        print('Direção: starToEnd');
                      }


                      setState(() {
                        _tarefas.removeAt(index);
                        
                      });
                      print('Direção ' + direction.toString());

                    },
                    key: Key(item),                  
                    child: ListTile(
                      title: Text(item),
                    )
                  );
                },
              ) 
            )
          ],
        ),
      ),
    );
  }
}