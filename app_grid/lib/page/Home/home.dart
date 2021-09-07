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
          // SizedBox(height: 8.0),
          child: Column(
            children: [
              // _inputText(),
              // SizedBox(height: 8.0),
              InputSearch(),
              // Text('Hola mundo')
            ],
          )),

        ]
      )
    );
  }


}