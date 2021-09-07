import 'package:flutter/material.dart';

class SecondaryTitle extends StatelessWidget {
  const SecondaryTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Let\'s upgrade your skill',
      style: TextStyle(
        color: Colors.black,
        fontSize: 14.0
      ),
    );
  }
}