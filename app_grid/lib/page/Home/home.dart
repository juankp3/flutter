// import 'package:app_grid/theme.dart';
import 'dart:ui';

import 'package:app_grid/theme.dart';
import 'package:app_grid/widget/appbar_custom.dart';
import 'package:app_grid/widget/card_category.dart';
import 'package:app_grid/widget/section_name.dart';
import 'package:app_grid/widget/text_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(

        margin: EdgeInsets.all(30),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0,10)
              )],
          borderRadius:BorderRadius.circular(50)
        ),
        child: Text('aaa'),
      ),
      appBar: AppBarCustom(
          title: 'Hello Juan Kuga',
          subTitle: 'Let\'s upgrade your skill',
          iconImage: 'avatar.png',
      ),
      body: ListView(
        children: [
          TextSearch(),
          SectionName(name: "Categoriessss"),
          CardCategory(),
          // _menu()
        ],
      )



    );
  }

  Widget _menu()
  {
    return Positioned(
      bottom: 0,
      child: Container(
        width: double.infinity,
        height: 10,
        color: Colors.yellow,
      ),
    );
  }


}