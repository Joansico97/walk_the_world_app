import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme();

  ThemeData getTheme() => ThemeData(
        colorScheme: _colorScheme,
        useMaterial3: true,
        fontFamily: 'AvenirNext',
        scaffoldBackgroundColor: AppColors.secondary,
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      );
}

ColorScheme get _colorScheme {
  return ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.tertiary,
    surface: AppColors.surface,
    onPrimary: AppColors.onPrimary,
    onSecondary: AppColors.onSecondary,
    onSurface: AppColors.background,
    shadow: AppColors.shadow,
    error: AppColors.error,
  );
}
