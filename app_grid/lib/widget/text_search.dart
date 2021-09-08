import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class TextSearch extends StatelessWidget {
  const TextSearch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(222, 222, 222, 1),
                blurRadius: 25.0,
                offset: Offset(4.0, 4.0), // 4.0, 4.0
              )
            ],
        ),
        child: _inputText(),
    );
  }


  Widget _inputText(){
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Course',
        prefixIcon: const Icon(Icons.search, color: AppTheme.ColorGray300),
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.all(24.0),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: AppTheme.ColorLightGrayShadow, width: 0.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: AppTheme.ColorLightGrayShadow, width: 0.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(color: AppTheme.ColorLightGrayShadow, width: 0.0),
        ),
      ),
      onChanged: (value) {
        print("Valor: " + value);
      },
    );
  }
}