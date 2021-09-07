import 'package:app_grid/widget/components/primary_title.dart';
import 'package:app_grid/widget/components/secondary_title.dart';
import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  const HeadTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTitle(),
        SizedBox(height: 8.0),
        SecondaryTitle(),
      ],
    );
  }
}