// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, deprecated_member_use, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './checkbox.dart';
import './customTaskWidget.dart';
import './textOutput.dart';
import './main.dart';
import 'main_data.dart';
import 'add_task.dart';
import 'draw_taks.dart';
import 'inside_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LogicScreen(),
      },
      theme: ThemeData(primaryColor: color1, accentColor: color1, backgroundColor: color3),
    );
  }
}
class Screen0 extends StatefulWidget {
  @override
  State<Screen0> createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}