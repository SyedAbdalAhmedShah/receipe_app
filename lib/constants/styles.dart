import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_colors.dart';

class Styles {
  static OutlineInputBorder get textFieldBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColor.borderColor));

  static OutlineInputBorder get textFieldErrorBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.red));

  static TextStyle get hintTextStyle =>
      const TextStyle(fontWeight: FontWeight.w300, fontSize: 12);

  static TextStyle get miniBold =>
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 16);
  static TextStyle get miniBoldSeconndaryColo => const TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 16,
      color: AppColor.secondaryColor);
}
