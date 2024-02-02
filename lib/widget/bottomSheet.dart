import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  TextEditingController title = TextEditingController();
  TextEditingController des = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Add New Task",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.black),
            ),
            TextFormField(
              controller: title,
              validator: (String? value) {
                if (value == null || value.trim().isEmpty) {
                  return "you must enter title";
                } else
                  return null;
              },
              decoration: InputDecoration(hintText: "enter your task"),
            ),
            TextFormField(
              controller: des,
              maxLines: 2,
              validator: (String? value) {
                if (value == null || value.trim().isEmpty) {
                  return "you must enter decsraption";
                } else
                  return null;
              },
              decoration:
                  InputDecoration(hintText: "enter your task description "),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Select time",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    showcalender(context);
                  },
                  child: Text(
                    "12:00 AM",
                    style: TextStyle(fontSize: 15, color: Color(0xff5D9CEC)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print(title.text);
                  }
                },
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color(0xff5D9CEC),
                        )),
                    child: Text(
                      "Add Task",
                      style: TextStyle(fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }

  void showcalender(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}
