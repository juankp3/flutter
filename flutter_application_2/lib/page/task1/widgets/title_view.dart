import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String star;

  TitleView({required this.title, required this.subtitle, required this.star});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
      subtitle: Text(subtitle, style: TextStyle(fontWeight: FontWeight.w200, fontSize: 14.0)),
      trailing: Wrap(
        spacing: 8,
        children: [
          Icon(
            Icons.star,
            size: 25.0,
            color: Colors.amber,
          ),
          Text(
            star, //41
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}