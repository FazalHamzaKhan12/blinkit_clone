import 'dart:async'; // Import this for Timer
import 'package:blinkit_clone/Helper/appcolors.dart';
import 'package:blinkit_clone/Helper/uihelper.dart';
import 'package:blinkit_clone/Screens/LoginScreen/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Fixing Timer usage
    Timer(Duration(seconds: 1 ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scafoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "image 1 (1).png"), // Adjust the path if needed
          ],
        ),
      ),
    );
  }
}
