import 'package:dio_flutter/app/data/model/app_model.dart';
import 'package:dio_flutter/app/data/provider/app_provider.dart';

class HomeRepository {
  HomeRepository(this.homeProvider);
  final HomeProvider homeProvider;

  Future<ApiModel> getData() async {
    return homeProvider.fetchData();
  }
}
