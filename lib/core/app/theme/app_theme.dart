import 'package:comerciando_app/core/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final theme = ThemeData.light();
    return theme.copyWith(
      scaffoldBackgroundColor: AppColors.lightBackground,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      dividerColor: Colors.white54,
      colorScheme: theme.colorScheme.copyWith(
        background: AppColors.lightBackground,
      ),
    );
  }

  static ThemeData get darkTheme {
    final theme = ThemeData.dark();
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppColors.darkBackground,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      dividerColor: Colors.black54,
      colorScheme: theme.colorScheme.copyWith(
        background: AppColors.darkBackground,
      ),
    );
  }
}
