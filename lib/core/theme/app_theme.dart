import 'package:flutter/material.dart';
import 'package:wtw_app/gen/fonts.gen.dart';

const seedColor = Color(0xFF264653);

class AppTheme {
  final bool isDarkmode;

  AppTheme({required this.isDarkmode});

  ThemeData getTheme() => ThemeData(
        fontFamily: FontFamily.lato,
        useMaterial3: true,
        scaffoldBackgroundColor: isDarkmode ? Colors.black : Colors.white,
        colorSchemeSeed: seedColor,
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
      );
}
