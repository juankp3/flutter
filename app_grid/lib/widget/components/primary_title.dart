import 'package:flutter/material.dart';

class PrimaryTitle extends StatelessWidget {
  const PrimaryTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello Juan Kuga',
      style: TextStyle(
        color: Colors.black,
        fontWeight:FontWeight.bold,
        fontSize: 25.0
      ),
    );
  }
}