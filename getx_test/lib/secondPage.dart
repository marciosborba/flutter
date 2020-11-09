import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controller.dart';

class SecondPage extends StatelessWidget {
  final CountController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page Getx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The value in controloller is:',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            obx(() => Text(
                  '${controller.count.value}',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ))
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
          SizedBox(height: 10),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => controller.decrement(),
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
