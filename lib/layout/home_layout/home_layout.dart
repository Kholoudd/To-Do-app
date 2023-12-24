import 'package:flutter/cupertino.dart';
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
      bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
