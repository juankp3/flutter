import 'package:app_grid/widget/appbar_custom.dart';
import 'package:flutter/material.dart';
class Course extends StatelessWidget {
  const Course({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
          title: 'Select Courses',
          subTitle: '12 Courses ready to be learned',
          iconImage: 'settings.png',
      ),
      body: Text('aa')
    );
  }
}