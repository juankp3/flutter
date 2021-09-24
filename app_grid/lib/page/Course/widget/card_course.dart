import 'package:app_grid/models/list_course.dart';
import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {
  final double _height= 265;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _height,
      margin: EdgeInsets.symmetric(vertical: 30.0),
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,

        itemBuilder: (context, index) => CourseItem(
          course: courses[index],
        ),
      )
    );
  }

}


class CourseItem extends StatelessWidget {
  CourseItem({
    required this.course,
  });

  final ListCourseModel course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
      child: Card(
        elevation: 1.5,
        // color: Colors.amber,
        margin: EdgeInsets.only(left: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          // width: double.infinity,
          // height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/android.png"),
              alignment: Alignment.topRight
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Stack(
                children: [
                  _contentCard(),
                  _schedule()
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }


  //   Widget _getCard(){
  //   return ;
  // }

  Widget _contentCard(){
    return   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Android Developer', style: AppTheme.headLine8),
        SizedBox(height: 12.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppTheme.ColorPrimaryPurple,
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              child: Text('\$50.00', style: AppTheme.headLine7),
            ),
          ),
        )

      ],
    );
  }

  Widget _schedule(){
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.ColorPrimaryPurple)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Icon(Icons.timer, color: AppTheme.ColorPrimaryPurple),
                SizedBox(width: 4.0),
                Text('8 hours, 20min', style: TextStyle(color: AppTheme.ColorPrimaryPurple))
              ],
            ),
          ),
        ),
      )
    );
  }


}

