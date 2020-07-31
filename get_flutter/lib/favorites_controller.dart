import 'package:get/get.dart';
import 'package:meta/meta.dart';

class FavoritesController extends GetxController {
  List<int> _itens = [];

  void toggle(int e) {
    if (isChecked(e)) {
      _itens.retainWhere((i) => i == e);
    } else {
      _itens.add(e);
      update();
    }
  }

  bool isChecked(int i) => _itens.contains(i);
  int itemAt(int i) => _itens[i];
  void remove(int i) {
    _itens.removeAt(i);
    update();
  }

  int get count => _itens.length;
}
