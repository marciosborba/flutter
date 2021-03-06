import 'carrinho_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/:title',
            child: (_, args) => CarrinhoPage(
                  title: args.params['title'],
                )),
      ];

  static Inject get to => Inject<CarrinhoModule>.of();
}
