import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_flutter/list_page.dart';

void main() {
  runApp(GetMaterialApp(
    navigatorKey: Get.key,
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Controller extends GetxController {
  int counter = 0;
  void incrementCounter() {
    counter++;
    update();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get - Thizer'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: () => Get.to(ListPage()),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder(
              init: Controller(),
              builder: (Controller controller) {
                return Text(
                  '${controller.counter}',
                  style: Theme.of(context).textTheme.headline1,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<Controller>().incrementCounter(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
