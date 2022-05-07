// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'main_data.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function fn;
  const AddTask(this.fn);

  @override
  Widget build(BuildContext context) {
    final taskController = TextEditingController();
    void pressedAdd() {
      listOfTasksPending.add(Task(show: true, value: taskController.text));
      taskController.text = "";
      fn(() {});
      Navigator.of(context).pop();
    }

    return Container(
      // height: MediaQuery.of(context).size.height/4 ,
      // width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            onSubmitted: (_) => (pressedAdd()),
            cursorColor: color1,
            style: const TextStyle(color: color1),
            decoration: InputDecoration(
              labelText: "Task",
              labelStyle: TextStyle(color: color1),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color1),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color1),
              ),
            ),
            controller: taskController,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color1)),
              onPressed: pressedAdd,
              child: Text("Add"),
            ),
          )
        ],
      ),
    );
  }
}
