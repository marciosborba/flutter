import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_mobx/app/shared/produto_model.dart';
import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final ProdutModel produtModel;
  final String title;
  const CompraPage({Key key, this.title = "Compra", @required this.produtModel})
      : super(key: key);

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends ModularState<CompraPage, CompraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.produtModel.nome),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Modular.to.pushNamed('/compra/carrinho/vindo do compra');
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Produto: '),
                    Text(
                        '${widget.produtModel.id} - ${widget.produtModel.nome}'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Preço'),
                    Text('${widget.produtModel.preco}')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
