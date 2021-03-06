import 'package:app_grid/page/Course/Course.dart';
import 'package:app_grid/page/Home/home.dart';
import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';
void main() => runApp(AppGrid());

class AppGrid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppTheme.ColorGrayBackground
      ),
      // home: Home()
      home: Course()
    );

  }
}