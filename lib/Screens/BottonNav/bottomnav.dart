import 'package:blinkit_clone/Helper/uihelper.dart';
import 'package:blinkit_clone/Screens/BottonNav/Cart/cart_screen.dart';
import 'package:blinkit_clone/Screens/BottonNav/Catergory/category_screen.dart';
import 'package:blinkit_clone/Screens/BottonNav/Home/home_screen.dart';
import 'package:blinkit_clone/Screens/BottonNav/Print/print_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "home 1.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "category 1.png"),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "printer 1.png"), label: "Print"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}