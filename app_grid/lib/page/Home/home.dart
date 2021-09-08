// import 'package:app_grid/theme.dart';
import 'package:app_grid/theme.dart';
import 'package:app_grid/widget/appbar_custom.dart';
import 'package:app_grid/widget/text_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
          title: 'Hello Juan Kuga',
          subTitle: 'Let\'s upgrade your skill',
          iconImage: 'avatar.png',
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              TextSearch(),
              _categories(),
            ],
          )),

        ]
      )
    );
  }

  Widget _categories()
  {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 8.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories', style: AppTheme.headLine3),
              Text('View All', style: AppTheme.headLine4)
            ]
          ),
        )
      ],
    );
  }


}