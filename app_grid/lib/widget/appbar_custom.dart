import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{

final String title;
final String subTitle;
final String iconImage;

  AppBarCustom({
    required this.title,
    required this.subTitle,
    required this.iconImage
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        // toolbarHeight: 200,
        centerTitle: false,
        // backgroundColor: Colors.red,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            SizedBox(width: 14.0),
            _appBarTitle(title, subTitle)
          ],
        ),
        actions: [
          _appBarButton(iconImage),
          SizedBox(width: 24.0)
        ],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);


  Widget _appBarTitle(title, subTitle){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTheme.headLine1,
        ),
        SizedBox(height: 4.0),
        Text(
          subTitle,
          style: AppTheme.headLine2,
        ),
      ],
    );
  }

  Widget _appBarButton(iconImage){
    return Column(
      children: [
        SizedBox(height: 8.0),
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(iconImage),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                spreadRadius: 0.0,
                color: Color.fromRGBO(222, 222, 222, 1),
                // offset: Offset(0, 0), // 4.0, 4.0
              )
            ],
          ),
        ),
      ],
    );
  }
}