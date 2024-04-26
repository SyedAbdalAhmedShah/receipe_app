import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_colors.dart';

class Styles {
  static OutlineInputBorder get textFieldBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColor.borderColor));
}
