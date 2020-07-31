import 'package:dio/dio.dart';
import 'package:dio_flutter/home/home_model.dart';

class Api {
  Future<ApiModel> fetchData() async {
    try {
      final response = await Dio().get('path');
      return ApiModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
