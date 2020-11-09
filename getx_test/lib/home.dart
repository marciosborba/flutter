import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/secondPage.dart';

import 'controller.dart';

class Home extends StatelessWidget {
  final CountController controller = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Getx Exemplos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'The counter valeu is: ',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              obx(() => Text(
                    '${controller.count.value}',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                onPressed: () => Get.to(SecondPage()),
                child: Text('Second Page here'),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              onPressed: () => controller.increment(),
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 12,
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                controller.decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ));
  }
}
