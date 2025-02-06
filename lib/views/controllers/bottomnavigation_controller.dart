import 'package:get/get.dart';

class BottomnavigationController extends GetxController {
   var selectedIndex = 0.obs; 

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}