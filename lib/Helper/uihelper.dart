import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static Widget CustomText({
    required String text,
    required Color color,
    required FontWeight fontWeight, // Fixed parameter name
    String? fontFamily,
    required double fontSize, // Fixed parameter name
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily ?? "regular",
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  static Widget CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: const Color(0XFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic 1.png"),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static Widget CustomButton({required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 18,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0XFF27AF34),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(fontSize: 8, color: const Color(0XFF27AF34)),
          ),
        ),
      ),
    );
  }
}
