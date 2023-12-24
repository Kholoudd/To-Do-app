import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  static const String routeName = "home";

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, bottom: 50, left: 35),
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff5D9CEC)),
            child: Text(
              "To Do List ",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
