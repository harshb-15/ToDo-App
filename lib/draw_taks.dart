// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/textOutput.dart';
import 'main_data.dart';
import 'customTaskWidget.dart';

class DrawTasksPeniding extends StatelessWidget {
  final Function fn;
  final Function fn2;
  const DrawTasksPeniding(this.fn, this.fn2);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return listOfTasksPending.isEmpty
        ? Column(
            children: [
              Image.asset(
                'Assets/Images/list-ul-solid.png',
                width: deviceWidth / 10,
                height: deviceHeight / 10,
              ),
              Text(
                "No Tasks Pending!",
                style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
              ),
            ],
          )
        : ReorderableListView(
          shrinkWrap: true,
            header: const TextOutput("Pending"),
            onReorder: ((oldIndex, newIndex) => fn2()),
            children: (listOfTasksPending).map((task) {
              return CustomTaskWidget(
                key: ObjectKey(task.value),
                del: fn2,
                ticked: !task.show,
                fn: fn,
                task: task.value,
              );
            }).toList(),
          );
  }
}

class DrawTasksCompleted extends StatelessWidget {
  final Function fn;
  final Function fn2;
  const DrawTasksCompleted(this.fn, this.fn2);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return listOfTasksCompleted.isEmpty
        ? Column(
            children: [
              Image.asset(
                'Assets/Images/list-ul-solid.png',
                width: deviceWidth / 10,
                height: deviceHeight / 10,
              ),
              Text(
                "No Tasks Completed!",
                style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
              ),
            ],
          )
        : Column(
            children: listOfTasksCompleted.map((task) {
              return CustomTaskWidget(
                del: fn2,
                ticked: !task.show,
                fn: fn,
                task: task.value,
              );
            }).toList(),
          );
  }
}
