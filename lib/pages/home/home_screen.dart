import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/widget/task_item_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  static const String routeName = "home";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFECDB),
      body: Column(
        children: [
          Stack(
            alignment: const Alignment(0, 2.7),
            children: [
              Container(
                padding: const EdgeInsets.only(top: 70, bottom: 50, left: 35),
                height: 160,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xff5D9CEC)),
                child: const Text(
                  "To Do List ",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                child: CalendarTimeline(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 356)),
                  onDateSelected: (date) => print(date),
                  leftMargin: 20,
                  monthColor: Colors.black,
                  dayColor: Colors.black,
                  activeDayColor: const Color(0xff5D9CEC),
                  activeBackgroundDayColor: Colors.white,
                  dotsColor: const Color(0xff5D9CEC),
                  selectableDayPredicate: (date) => date.day != 23,
                  locale: 'en_ISO',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => TaskItemWidget(),
            itemCount: 20,
          )),
        ],
      ),
    );
  }
}
