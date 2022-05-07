// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'main_data.dart';
class TextOutput extends StatelessWidget {
  final String str;
  const TextOutput(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        str,
        style: const TextStyle(color: color1, fontSize: 17, fontWeight: FontWeight.bold),
      ),
    );
  }
}
