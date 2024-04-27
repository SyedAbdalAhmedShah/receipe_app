import 'package:flutter/material.dart';
import 'package:receipe_app/constants/styles.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  const AppTextField(
      {required this.hint,
      required this.controller,
      this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: Styles.hintTextStyle,
          border: InputBorder.none,
          enabled: true,
          focusedBorder: Styles.textFieldBorder,
          enabledBorder: Styles.textFieldBorder,
          disabledBorder: Styles.textFieldBorder),
    );
  }
}
