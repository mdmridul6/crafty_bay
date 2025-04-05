import 'package:ecomm/presentation/ui/screens/splash_screen.dart';
import 'package:ecomm/presentation/ui/utils/app_clolors.dart';
import 'package:flutter/material.dart';

class CruftyBay extends StatelessWidget {
  const CruftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppClolors.themeColor),
      ),
    );
  }
}
