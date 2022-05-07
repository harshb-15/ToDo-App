// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'main_data.dart';


class MyCheckBox extends StatefulWidget {
  bool isTicked;
  final String task;
  final Function fn;
  MyCheckBox(this.isTicked, this.task, this.fn);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        // primarySwatch: Colors.blue,
        unselectedWidgetColor: color1, // Your color
      ),
      child: Checkbox(
        checkColor: Colors.white,
        activeColor: color1,
        value: widget.isTicked,
        onChanged: (bool value) {
          setState(() {
            widget.isTicked = !widget.isTicked;
            widget.fn(widget.task, widget.isTicked);
          });
        },
      ),
    );
  }
}
