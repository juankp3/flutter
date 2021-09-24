import 'package:app_grid/theme.dart';
import 'package:app_grid/widget/appbar_custom.dart';
import 'package:app_grid/page/Home/widget/card_category.dart';
import 'package:app_grid/page/Home/widget/text_search.dart';
import 'package:app_grid/widget/content_menu.dart';
import 'package:app_grid/widget/section_name.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
          title: 'Hello Juan Kuga',
          subTitle: 'Let\'s upgrade your skill',
          iconImage: 'assets/avatar.png',
      ),
      body: Stack(
        children: [
          _body(),
          ContentMenu(menu: _menu())
        ],
      ),
    );
  }

  Widget _body(){
    return ListView(
        children: [
          TextSearch(),
          SectionName(name: "Categories"),
          CardCategory(),
        ],
      );
  }

  Widget _menu(){
    return Padding(
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
    );
  }

  Widget _iconmenu(icon)
  {
    return Container(
      width: 40,
      height: 60,
      child: icon,
    );
  }


}