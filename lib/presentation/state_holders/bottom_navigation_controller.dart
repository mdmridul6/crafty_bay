import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onChangeIndex(int index) {
    _selectedIndex = index;
    update();
  }
}
