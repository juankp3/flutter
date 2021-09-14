import 'package:flutter/material.dart';

class ContentMenu extends StatelessWidget {
  final Widget menu;

  ContentMenu({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
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
        child: menu,
      )
    );
  }
}