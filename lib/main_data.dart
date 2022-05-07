import 'package:flutter/material.dart';
const color4 = Color(0xff082032);
const color3 = Color(0xff2C394B);
const color2 = Color(0xff334756);
const color1 = Color(0xffFF4C29);
class Task {
  bool show;
  String value;
  Task({@required this.show, @required this.value});
}
List<Task> listOfTasksPending = [
  Task(show: true, value: "Buy Pencil"),
  Task(show: true, value: "Brush"),
];
List<Task> listOfTasksCompleted = [Task(show: false, value: "Play Cricket")];
