import 'package:dio/dio.dart';
import 'package:dio_flutter/app/data/model/app_model.dart';

class HomeProvider {
  Future<ApiModel> fetchData() async {
    try {
      final response = await Dio().get("https://api.covid19api.com/summary");
      return ApiModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return ApiModel();
    }
  }
}
