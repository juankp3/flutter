import 'package:flutter/material.dart';

class AppBarAvatar extends StatelessWidget {
  const AppBarAvatar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              image: AssetImage("avatar.png"),
            ),
          ),
        ),
      ],
    );
  }
}