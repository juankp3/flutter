import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Juan Kuga',
          style: AppTheme.headLine1,
        ),
        SizedBox(height: 8.0),
        Text(
          'Let\'s upgrade your skill',
          style: AppTheme.headLine2,
        ),
      ],
    );
  }
}