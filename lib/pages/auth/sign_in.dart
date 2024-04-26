import 'package:flutter/material.dart';
import 'package:receipe_app/widgets/app_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [AppTextField()],
        ),
      ),
    );
  }
}
