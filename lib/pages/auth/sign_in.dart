import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/widgets/primary_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(40),
            const Text(
              AppStrings.hello,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            const Text(
              AppStrings.welcome,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            const Gap(30),
            const Text(
              AppStrings.email,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Gap(5),
            const AppTextField(hint: AppStrings.enterEmail),
            const Gap(30),
            const Text(
              AppStrings.enterPass,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Gap(5),
            const AppTextField(hint: AppStrings.enterEmail),
            const Gap(20),
            TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.forgotPass,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            const Gap(20),
            PrimaryButton(
                buttonName: AppStrings.signIn,
                onTap: () {},
                icon: Icons.adaptive.arrow_forward)
          ],
        ),
      ),
    );
  }
}
