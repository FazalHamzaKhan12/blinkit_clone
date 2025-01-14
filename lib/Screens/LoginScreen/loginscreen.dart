import 'package:blinkit_clone/Helper/uihelper.dart';
import 'package:blinkit_clone/Screens/BottonNav/bottomnav.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(
              img: "Blinkit Onboarding Screen.png",
            ),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomImage(img: "image 10.png"),
            const SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
              text: "India’s last minute app",
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 24, // Corrected parameter name
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                      text: "Hamza",
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15, // Corrected parameter name
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    UiHelper.CustomText(
                      text: "79027XXXX",
                      color: const Color(0XFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontSize: 14, // Corrected parameter name
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: "Login  with",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16, // Corrected parameter name
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            UiHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                      text: "Access your saved addresses from Zomato automatically!",
                      color: const Color(0XFF9C9C9C),
                      fontWeight: FontWeight.w500,
                      fontSize: 10, // Corrected parameter name
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                      text: "or login with phone number",
                      color: const Color(0XFF269237),
                      fontWeight: FontWeight.normal,
                      fontSize: 14, // Corrected parameter name
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
