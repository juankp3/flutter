import 'package:app_grid/theme.dart';
import 'package:flutter/material.dart';

class TextSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 26, bottom: 26),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(25.0),
        child: _inputText()
      ),
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