import 'package:crafty_bay/presentation/state_holders/otp_controller.dart';
import 'package:crafty_bay/presentation/ui/screens/complete_profile_screen.dart';
import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final otpController = Get.find<OtpController>();

  void onTapVerifyButton() {
    otpController.onOTPComplete(otpController.otp.toString());
    Get.to(() => CompleteProfileScreen());
  }

  @override
  void initState() {
    super.initState();
    otpController.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 82),
              AppLogoWidget(),
              SizedBox(height: 24),
              Text(
                "Enter Otp Code",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 8),
              Text(
                "A digit OTP has been send to your email",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
              ),
              SizedBox(height: 8),
              PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  selectedColor: Colors.green,
                  inactiveFillColor: Colors.white,
                  inactiveColor: AppColors.themeColor,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: otpController.otpController,
                appContext: context,
              ),
              SizedBox(height: 8),
              GetBuilder<OtpController>(
                builder:
                    (controller) =>
                        ElevatedButton(onPressed: () {}, child: Text("Verify")),
              ),

              SizedBox(height: 16),

              GetBuilder<OtpController>(
                builder:
                    (controller) => RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyLarge,
                        text: 'This code will expired in :',
                        children: [
                          TextSpan(
                            text: '${controller.remainTiming.toString()}s',
                            style: TextStyle(color: AppColors.themeColor),
                          ),
                        ],
                      ),
                    ),
              ),

              SizedBox(height: 16),
              GetBuilder<OtpController>(
                builder:
                    (controller) => Visibility(
                      visible: controller.isCodeExpired == true,
                      child: TextButton(
                        onPressed: controller.resendCode,
                        child: const Text("Resent Code"),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
