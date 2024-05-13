import 'package:flutter/material.dart';

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return emailRegExp.hasMatch(this);
  }
}

extension Pop on BuildContext {
  void poping() {
    Navigator.of(this).pop();
  }
}

extension PushReplacement on BuildContext {
  void pushReplacement({required Widget child}) {
    Navigator.of(this).pushReplacement(MaterialPageRoute(
      builder: (context) => child,
    ));
  }
}

extension Push on BuildContext {
  void push({required Widget child}) {
    Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => child,
    ));
  }
}

extension PushRemoveUntil on BuildContext {
  void pushRemoveUntil({required Widget child}) {
    Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => child,
      ),
      (route) => false,
    );
  }
}
