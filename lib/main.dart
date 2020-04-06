import 'package:flutter/material.dart';
import 'package:flutter_app_dropdown_example/dropdown_example1.dart';
import 'package:flutter_app_dropdown_example/dropdown_example2.dart';
import 'package:flutter_app_dropdown_example/dropdown_example3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DropdownExemaple3(),
    );
  }
}