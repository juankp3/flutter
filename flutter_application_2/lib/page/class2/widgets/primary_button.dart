import 'package:flutter/material.dart';
// final Title;


class PrimaryButton extends StatelessWidget {
  final String title;

  PrimaryButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('Click me'),
      onPressed: (){

      },
    );
  }
}