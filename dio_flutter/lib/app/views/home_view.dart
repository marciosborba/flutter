import 'package:dio_flutter/app/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';

class HomePage extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.linearToSrgbGamma(),
                image: NetworkImage(
                    "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Corona Virus'),
            backgroundColor: Colors.white10,
            elevation: 0,
            centerTitle: true,
          ),
          body: Center(
              child: Obx(() => (controller.data() == null)
                  ? CircularProgressIndicator()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Text(
                          'Total Confirmado',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${controller.data.value.global.totalConfirmed}',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Total de Mortes',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${controller.data.value.global.totalDeaths}',
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlineButton(
                          borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3,
                          ),
                          shape: StadiumBorder(),
                          onPressed: () {
                            Get.toNamed('/country');
                          },
                          child: Text(
                            'Encontrar por país',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ))),
        ));
  }
}
