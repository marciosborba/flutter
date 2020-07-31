import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('CONTRUIDO');

    return Scaffold(
      appBar: AppBar(
        title: Text('Get State Mananger'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button many times'),
            GetBuilder<Controller>(
                init: Controller(),
                initState: (_) {
                  Controller.to.fetchDataFromApi();
                },
                builder: (_) {
                  if (_.data == null) {
                    return CircularProgressIndicator();
                  } else {
                    return Text(
                      '${_.data.global.totalConfirmed}',
                      style: Theme.of(context).textTheme.headline1,
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
