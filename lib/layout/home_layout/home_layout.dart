import 'package:flutter/material.dart';
import 'package:to_do_app/pages/home/home_screen.dart';

import '../../pages/setting/setting_screen.dart';

class HomeLayout extends StatefulWidget {
  @override
  static const String routeName = "home Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    SettingsScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 28,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff5D9CEC),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(
            color: Color(0xff5D9CEC),
            size: 30,
          ),
          selectedItemColor: Color(0xff5D9CEC),
          unselectedIconTheme:
              IconThemeData(size: 25, color: Colors.grey.shade400),
          unselectedItemColor: Colors.grey.shade400,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            )
          ],
        ),
      ),
    );
  }
}
