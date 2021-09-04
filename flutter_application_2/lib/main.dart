import 'package:flutter/material.dart';
import 'package:flutter_application_2/page/class2/alert_page.dart';
import 'package:flutter_application_2/page/task1/task1_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Task1Page(),
    );
  }
}