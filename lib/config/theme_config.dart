import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_colors.dart';

class ThemeConfig {
  static ThemeData get themeData => ThemeData(
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
          primary: AppColor.primaryColor,
          secondary: AppColor.secondaryColor,
        ),
        useMaterial3: true,
      );
}
