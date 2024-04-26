import 'package:flutter/material.dart';
import 'package:receipe_app/constants/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: InputBorder.none,
          enabled: true,
          enabledBorder: Styles.textFieldBorder,
          disabledBorder: Styles.textFieldBorder),
    );
  }
}
