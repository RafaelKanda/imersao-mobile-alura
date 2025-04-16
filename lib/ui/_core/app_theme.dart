import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (state.contains(WidgetState.pressed)) {
            return AppColors.mainColor.withAlpha(171);
          }
          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
