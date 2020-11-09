import 'package:dio_flutter/app/data/model/app_model.dart';
import 'package:dio_flutter/app/data/repository/app_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this.homeRepository);
  final HomeRepository homeRepository;

  Rx<ApiModel> data = Rx<ApiModel>();

  @override
  void onInit() => fetchDataFromApi();

  void fetchDataFromApi() async {
    data.value = await homeRepository.getData();
    if (data.value == null) {
      Get.snackbar('Erro', 'Não foi possível se conectar ao servidor');
    }
  }
}
