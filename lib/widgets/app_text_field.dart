import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:receipe_app/constants/styles.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  const AppTextField(
      {required this.hint,
      this.obscureText = false,
      required this.controller,
      this.validator,
      super.key});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool showPassword = false;
  late bool obscureText;
  @override
  void initState() {
    obscureText = widget.obscureText;
    super.initState();
  }

  toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: obscureText,
      decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: widget.obscureText,
            child: InkWell(
              onTap: toggleShowPassword,
              child: showPassword
                  ? const Icon(Icons.visibility_off_outlined)
                  : const Icon(Icons.visibility_outlined),
            ),
          ),
          hintText: widget.hint,
          hintStyle: Styles.hintTextStyle,
          border: InputBorder.none,
          enabled: true,
          errorBorder: Styles.textFieldErrorBorder,
          focusedBorder: Styles.textFieldBorder,
          enabledBorder: Styles.textFieldBorder,
          disabledBorder: Styles.textFieldBorder),
    );
  }
}
