import 'package:flutter/material.dart';
import '../theme.dart';

class SectionName extends StatelessWidget {
  final String name;

  SectionName({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 8.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppTheme.headLine3),
              Text('View All', style: AppTheme.headLine4)
            ]
          ),
        )
      ],
    );
  }
}