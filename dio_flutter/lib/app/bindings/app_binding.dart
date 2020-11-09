import 'package:dio_flutter/app/controllers/app_controller.dart';
import 'package:dio_flutter/app/data/provider/app_provider.dart';
import 'package:dio_flutter/app/data/repository/app_repository.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      final homeProvider = HomeProvider();
      final homeRepository = HomeRepository(homeProvider);
      HomeController(homeRepository);
    });
  }
}
