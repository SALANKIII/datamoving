import 'package:datamoving/controllers/home_view_controller.dart';
import 'package:datamoving/models/user.dart';
import 'package:datamoving/views/add_view.dart';
import 'package:datamoving/views/list_item_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = HomeViewController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text("valami")),
            ),
            body: Center(
              child: Text("valami"),
            ),
            drawer: Drawer(
              child: Column(children: [
                SizedBox(
                  height: 400,
                ),
                CupertinoButton(
                    child: Text("Hozzáad"),
                    color: Colors.black54,
                    onPressed: () {
                      controller.navigateToAddView();
                    }),
                SizedBox(
                  height: 100,
                ),
                CupertinoButton(
                    child: Text("Kilistáz"),
                    color: Colors.black54,
                    onPressed: () {
                      controller.navigateToListItemView();
                    }),
              ]),
            ),
          );
        });
  }
}
