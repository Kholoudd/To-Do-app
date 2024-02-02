import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  static const String routeName = "settings";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFECDB),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70, bottom: 50, left: 35),
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xff5D9CEC)),
                  child: Text(
                    "Settings ",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 50, bottom: 15, left: 30),
                    child: Text(
                      "Language",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    )),
                Container(
                  margin: EdgeInsets.only(left: 55),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff5D9CEC),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "English",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D9CEC)),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down, color: Color(0xff5D9CEC)),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 30, left: 30, bottom: 15),
                    child: Text(
                      "Mode",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                    )),
                Container(
                  margin: EdgeInsets.only(left: 55),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  width: 320,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff5D9CEC),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Light",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5D9CEC)),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_drop_down, color: Color(0xff5D9CEC)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
