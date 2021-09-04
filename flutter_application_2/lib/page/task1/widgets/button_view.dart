import 'package:flutter/material.dart';


class ButtonView extends StatelessWidget {
  final IconData icon;
  final String title;

  ButtonView({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize : MainAxisSize.min,
      children: [
        IconButton(
          // icon: const Icon(Icons.call, color: Colors.blue),
          icon: Icon(icon, color: Colors.blue),
                  // title: Text("${Icons.title}"),

          onPressed: (){},
        ),
        Text(title, style: TextStyle(fontSize: 12.0, color: Colors.blue),)
      ],
    );
  }
}