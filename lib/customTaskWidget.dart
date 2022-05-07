// ignore_for_file: file_names

import 'package:flutter/material.dart';
import './checkbox.dart';
import 'main_data.dart';

class CustomTaskWidget extends StatelessWidget {
  final bool ticked;
  final Function fn;
  final Function del;
  final String task;
  const CustomTaskWidget({Key key, @required this.fn, @required this.task, @required this.ticked, @required this.del}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        // for (int i = 0; i < listOfTasksPending.length; i++) {
        //   if (listOfTasksPending[i].value == task) {
        //     var temp = listOfTasksPending[i];
        //     listOfTasksPending.remove(temp);
        //     del(() {});
        //     break;
        //   }
        // }
        // for (int i = 0; i < listOfTasksCompleted.length; i++) {
        //   if (listOfTasksCompleted[i].value == task) {
        //     var temp = listOfTasksCompleted[i];
        //     listOfTasksCompleted.remove(temp);
        //     del(() {});
        //     break;
        //   }
        // }
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(border: Border.all(color: color1), borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            MyCheckBox(ticked, task, fn),
            Text(
              task,
              style: const TextStyle(color: color1),
            ),
          ],
        ),
      ),
    );
  }
}
