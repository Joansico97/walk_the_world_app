import 'package:flutter/material.dart';

const seedColor = Colors.blue;

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        // fontFamily: FontFamily.manrope,
        useMaterial3: true,
        scaffoldBackgroundColor: isDarkmode ? Colors.black : Colors.white,
        colorSchemeSeed: seedColor,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
      );
}
