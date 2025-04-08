import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  late bool isCodeExpired = false;
  late String otp = '';
  late int remainTiming = 10;

  Timer? timer;
  TextEditingController otpController = TextEditingController();

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remainTiming > 0) {
        remainTiming--;
      } else {
        isCodeExpired = true;
        timer.cancel();
      }
      update();
    });
  }

  void resendCode() {
    remainTiming = 10;
    isCodeExpired = false;
    otp = '';
    otpController.clear();
    startTimer();
    update();
  }

  void onOTPComplete(String value) {
    otp = value;
  }

  @override
  void onClose() {
    timer?.cancel();
    otpController.dispose();
    super.onClose();
  }
}
