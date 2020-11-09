import 'package:dio_flutter/app/bindings/app_binding.dart';
import 'package:dio_flutter/app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/views/country_view.dart';
import 'app/views/details_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => HomePage(), binding: HomeBinding()),
      GetPage(name: '/country', page: () => CountryPage()),
      GetPage(name: '/details', page: () => DetailsPage()),
    ],
  ));
}
