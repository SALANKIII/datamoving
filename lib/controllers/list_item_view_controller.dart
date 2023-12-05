import 'package:datamoving/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemViewController extends GetxController{
  ListItemViewController({required this.users});
  List<User> users;

  List<Widget> getRows(){
    List<Widget> temp = [];

    for(User user in users){
      temp.add(Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: Text("${user.firstname} ${user.lastname}")),
      ));
    }
    return temp;
  }
}