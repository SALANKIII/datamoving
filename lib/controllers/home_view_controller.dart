import 'package:datamoving/models/user.dart';
import 'package:datamoving/views/add_view.dart';
import 'package:datamoving/views/list_item_view.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  List<User> users = [];
  void navigateToAddView() async{
    User user =await Get.to(AddView(), transition: Transition.cupertino);
    users.add(user);
    Get.snackbar("${user.firstname}${user.lastname}","Sikeres hozzáadás");
  }

  void navigateToListItemView(){
     Get.to(ListItemView(users: users,), transition: Transition.cupertino);
  }
  


}