import 'package:crafty_bay/presentation/state_holders/bottom_navigation_controller.dart';
import 'package:crafty_bay/presentation/state_holders/otp_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpController());
    Get.lazyPut(() => BottomNavigationController());
  }
}
