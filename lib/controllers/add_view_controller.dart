import 'package:datamoving/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddViewController extends GetxController {
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();

  void kiurites(){
    firstname.clear();
    lastname.clear();
  }

  void rogzites() {
    Get.back(
      result: User(
        firstname: firstname.text,
        lastname: lastname.text,
      ),
    );
  }
}
