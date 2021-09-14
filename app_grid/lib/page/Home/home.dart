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
      // bottomNavigationBar: _menu(),
      appBar: AppBarCustom(
          title: 'Hello Juan Kuga',
          subTitle: 'Let\'s upgrade your skill',
          iconImage: 'assets/avatar.png',
      ),
      // body: ListView(
      //   children: [
      //     TextSearch(),
      //     SectionName(name: "Categories"),
      //     CardCategory(),
      //     _menu()
      //   ],
      // )
      body: Stack(
        children: [
          _cargarLista(),
          _menu2()
        ],
      ),



    );
  }

  Widget _cargarLista(){
    return ListView(
        children: [
          TextSearch(),
          SectionName(name: "Categories"),
          CardCategory(),
        ],
      );
  }

  Widget _menu2()
  {
    return Align(
      alignment: Alignment.bottomCenter,
      child: _menu()
    );
    // return Positioned(
    //   top: 600,
    //   left: 0,
    //   right: 0,
    //   child: _menu()
    // );
  }

  Widget _menu()
  {
    return Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(30),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.25),
              blurRadius: 30,
              offset: Offset(0,0)
              )],
          borderRadius:BorderRadius.circular(50)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _iconmenu(Icon(Icons.home, size: 28, color: AppTheme.ColorPrimaryPurple)),
                _iconmenu(Icon(Icons.email, size: 28, color: AppTheme.ColorGray300)),
                _iconmenu(Icon(Icons.folder, size: 28, color: AppTheme.ColorGray300)),
                _iconmenu(Icon(Icons.settings, size: 28, color: AppTheme.ColorGray300)),
              ],
            ),
          ),
        ),
    );
  }

  Widget _iconmenu(icon)
  {
    return Container(
      // width: 100,
      height: 60,
      // color: Colors.red,
      child: icon,
    );
  }


}