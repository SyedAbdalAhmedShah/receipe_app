import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_colors.dart';

class ThemeConfig {
  static ThemeData get themeData => ThemeData(
        // primaryColor: AppColor.primaryColor,
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //     backgroundColor: AppColor.primaryColor),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //         foregroundColor: AppColor.primaryColor,
        //         backgroundColor: AppColor.primaryColor)),
        // buttonTheme: ButtonThemeData(buttonColor: AppColor.primaryColor),
        colorScheme: const ColorScheme.light(
          primary: AppColor.primaryColor,
          secondary: AppColor.secondaryColor,
        ),
        useMaterial3: true,
      );
}
