import 'package:modular_mobx/app/modules/compra/pages/carrinho/carrinho_module.dart';

import 'compra_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'compra_page.dart';

class CompraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CompraController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CompraPage(
                  produtModel: args.data,
                )),
        Router('/carrinho', module: CarrinhoModule())
      ];

  static Inject get to => Inject<CompraModule>.of();
}
