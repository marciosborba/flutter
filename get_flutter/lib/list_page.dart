import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorites_controller.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Get - Thizer 2'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () => null,
            )
          ],
        ),
        body: GetBuilder(
          init: FavoritesController(),
          builder: (FavoritesController controller) {
            return GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  Colors.primaries.length,
                  (int i) {
                    return Stack(
                      children: <Widget>[
                        Container(color: Colors.primaries[i]),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            margin: EdgeInsets.only(top: 10, right: 10),
                            child: IconButton(
                              icon: Icon(
                                controller.isChecked(i)
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red[300],
                              ),
                              onPressed: () {
                                controller.toggle(i);
                              },
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ));
          },
        ));
  }
}
