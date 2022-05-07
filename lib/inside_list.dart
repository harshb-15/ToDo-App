// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import './textOutput.dart';
import 'main_data.dart';
import 'add_task.dart';
import 'draw_taks.dart';
class LogicScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LogicScreenState();
}

class _LogicScreenState extends State<LogicScreen> {
  void refresh(String task, bool isTicked) {
    if (isTicked == true) {
      for (int i = 0; i < listOfTasksPending.length; i++) {
        if (listOfTasksPending[i].value == task) {
          var temp = listOfTasksPending[i];
          listOfTasksPending.remove(temp);
          temp.show = false;
          listOfTasksCompleted.add(temp);
        }
      }
    } else {
      for (int i = 0; i < listOfTasksCompleted.length; i++) {
        if (listOfTasksCompleted[i].value == task) {
          var temp = listOfTasksCompleted[i];
          listOfTasksCompleted.remove(temp);
          temp.show = true;
          listOfTasksPending.add(temp);
        }
      }
    }
    setState(() {});
  }

  void startAddTask(BuildContext context) {
    showModalBottomSheet<void>(
        backgroundColor: Theme.of(context).backgroundColor,
        context: context,
        builder: (BuildContext context) {
          return AddTask(setState);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        title: const Text("To Do List"),
        actions: [
          IconButton(
            onPressed: () => startAddTask(context),
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        color: color3,
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            // TextOutput("Pending"),
            DrawTasksPeniding(refresh, setState),
            TextOutput("Completed"),
            DrawTasksCompleted(refresh, setState),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          startAddTask(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
