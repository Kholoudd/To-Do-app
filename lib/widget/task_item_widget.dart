import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35, left: 30, right: 30),
      decoration: BoxDecoration(
          color: Color(0xffEC4B4B), borderRadius: BorderRadius.circular(10)),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const DrawerMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              // An action can be bigger than the others.
              flex: 2,
              onPressed: (context) {},
              backgroundColor: Color(0xffEC4B4B),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'delete',
              borderRadius: BorderRadius.circular(10),
            ),
          ],
        ),
        child: Container(
          // margin: EdgeInsets.only(top: 35, left: 30 , right: 30),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 15),
                width: 5,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xff5D9CEC),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Play basket ball",
                    style: TextStyle(
                        color: Color(0xff5D9CEC),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timelapse,
                        size: 12,
                      ),
                      Text(
                        "10:30 AM",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(0xff5D9CEC),
                    borderRadius: BorderRadius.circular(15)),
                child: Icon(
                  Icons.done,
                  size: 28,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
