import 'package:flutter/material.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  // Container > Colum > Card > Colum > Text & Text
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home'),),
        body: Container(child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Text('Juan'),
                  Text('Kuga'),
                ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}