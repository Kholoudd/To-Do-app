import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do_app/layout/home_layout/home_layout.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash Screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaquary = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/image/splash.png",
        fit: BoxFit.cover,
        height: mediaquary.height,
      ),
    );
  }
}
