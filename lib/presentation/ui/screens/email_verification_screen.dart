import 'package:crafty_bay/presentation/ui/screens/otp_verification_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();


  void _onTapNextButton(){
    Get.to(() => OtpVerificationScreen());

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
                "Welcome Back",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: 8),
              Text(
                "Please enter your email address",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.black54),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _emailTextEditingController,
                decoration: InputDecoration(hintText: "Email"),
              ),
              SizedBox(height: 8),
              ElevatedButton(onPressed: _onTapNextButton, child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    super.dispose();
  }
}
