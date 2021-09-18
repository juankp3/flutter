import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class ListCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10, bottom: 20.0),
      child: Container(
        child: Column(
          children: [
            _listcourse()
          ],
        ),
      ),
    );
  }


  Widget _listcourse() {
    return SizedBox(
      // height: 650,
      child: ListView(
        shrinkWrap: true,
        children: [
          _itemCourse(),
          _itemCourse(),
          _itemCourse()
        ],
      ),
    );
  }

  Widget _itemCourse(){
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16.0),
      height: 63,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset('assets/jkuga.jpg'),
                SizedBox(width: 16.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Installation & Intro", style: AppTheme.headLine5),
                    SizedBox(height: 4.0,),
                    Text("14:30 minutes", style: AppTheme.headLine6),
                  ]
                )
              ],
            ),
          ),
          Image.asset('assets/play.png'),
        ],
      ),
    );
  }

}

