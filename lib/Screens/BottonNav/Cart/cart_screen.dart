import 'package:blinkit_clone/Helper/uihelper.dart';
import 'package:blinkit_clone/Screens/BottonNav/bottomnav.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: UiHelper.CustomText(
                        text: "Blinkit in",
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.bold, // Fixed parameter name
                        fontSize: 15,
                        fontFamily: "bold",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: UiHelper.CustomText(
                        text: "16 minutes",
                        color: Color(0XFF000000),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "bold",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          UiHelper.CustomText(
                            text: "HOME ",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          UiHelper.CustomText(
                            text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStackedImage(String img) {
    return Stack(
      alignment: Alignment.center,
      children: [
        UiHelper.CustomImage(img: img),
        Positioned(
          bottom: 10,
          child: UiHelper.CustomButton(onPressed: () {}),
        ),
      ],
    );
  }
}
