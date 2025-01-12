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
          children: [
            UiHelper.CustomImage(
              img: "Blinkit Onboarding Screen.png",
            ),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
                text: "India’s last minute app",
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontsize: 24),
            SizedBox(
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
                    color: Colors.white70),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    UiHelper.CustomText(
                        text: "Hamza",
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontsize: 15),
                    SizedBox(
                      height: 6,
                    ),
                    UiHelper.CustomText(
                        text: "79027XXXX",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.bold,
                        fontsize: 14),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                                text: "Login  with",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontsize: 16),
                            SizedBox(
                              width: 5,
                            ),
                            UiHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    UiHelper.CustomText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: Color(0XFF9C9C9C),
                        fontWeight: FontWeight.w500,
                        fontsize: 10),
                    SizedBox(
                      height: 20,
                    ),
                    UiHelper.CustomText(
                        text: "or login with phone number",
                        color: Color(0XFF269237),
                        fontWeight: FontWeight.normal,
                        fontsize: 14),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
