import 'package:flutter/material.dart';
import 'package:flutter_application_2/page/class2/widgets/primary_button.dart';

class AlertPge extends StatelessWidget {
  const AlertPge({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert', style: TextStyle(color: Colors.black54),),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(title: 'Uno'),
            PrimaryButton(title: 'Dos'),
          ],
        ),
      ),
    );
  }
}