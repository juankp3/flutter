import 'package:app_grid/theme.dart';
import 'package:app_grid/widget/appbar_custom.dart';
import 'package:app_grid/page/Course/widget/card_course.dart';
import 'package:app_grid/widget/content_menu.dart';
import 'package:app_grid/page/Course/widget/list_course.dart';
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
          ContentMenu(menu: _menu())
      ],)
    );
  }

  Widget _menu(){
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Container(
        alignment: Alignment.center,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppTheme.ColorYellow
              ),
              child: Icon(Icons.file_present),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 44,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppTheme.ColorPrimaryPurple,
                ),
                child: Text('Get the Course'),
              ),
            )
          ],
        ),
      ),
    );
  }
}