// import 'package:app_grid/theme.dart';
import 'package:app_grid/widget/Input_search.dart';
import 'package:app_grid/widget/head_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: HeadTitle(),
        actions: [
          Column(
            children: [
              SizedBox(height: 8.0),
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    // image: AssetImage("jkuga.jpg"),
                    image: AssetImage("avatar.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 15.0,)
        ],
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              InputSearch(),
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
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories'),
              Text('View All')
            ]
          ),
        )
      ],
    );
  }
}