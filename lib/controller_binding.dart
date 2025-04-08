import 'package:crafty_bay/presentation/state_holders/otp_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtpController());
  }
}
