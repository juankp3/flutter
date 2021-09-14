import 'package:app_grid/widget/appbar_custom.dart';
import 'package:app_grid/widget/card_course.dart';
import 'package:app_grid/widget/content_menu.dart';
import 'package:app_grid/widget/list_course.dart';
import 'package:app_grid/widget/section_name.dart';
import 'package:flutter/material.dart';
class Course extends StatelessWidget {
  const Course({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
          title: 'Select Courses',
          subTitle: '12 Courses ready to be learned',
          iconImage: 'assets/settings.png',
      ),
      body: Stack(children: [
          ListView(
            children: [
              CardCourse(),
              SectionName(name: "Android Developer"),
              ListCourse()
            ]
          ),
          ContentMenu(menu: Text('aaa'))
      ],)
    );
  }
}