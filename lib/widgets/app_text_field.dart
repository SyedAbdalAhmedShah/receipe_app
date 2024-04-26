import 'package:flutter/material.dart';
import 'package:receipe_app/constants/styles.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final String? Function(String?)? validator;
  const AppTextField({required this.hint, this.validator, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
