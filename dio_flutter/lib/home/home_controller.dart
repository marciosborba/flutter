import 'package:dio_flutter/home/home_repository.dart';
import 'package:get/get.dart';

import 'home_model.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();
  ApiModel data;
  void fetchDataFromApi() async {
    Api api = new Api();
    final response = await api.fetchData();
    if (response == null) {
      Get.snackbar('Erro', 'Não foi possível conectar ao servidor');
    } else {
      data = response;
      update();
    }
  }
}
