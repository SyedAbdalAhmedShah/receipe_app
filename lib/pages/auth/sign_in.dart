import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/widgets/auth_method_image-box.dart';
import 'package:receipe_app/widgets/primary_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
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
              child: Text(AppStrings.forgotPass,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).colorScheme.secondary)),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                    gapBTWidget: 20,
                    buttonName: AppStrings.signIn,
                    width: size.width * 0.9,
                    onTap: () {},
                    icon: Icons.adaptive.arrow_forward),
              ],
            ),
            const Gap(20),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Gap(10),
                Text("Or Sign in With"),
                Gap(10),
                Expanded(
                    child: Divider(
                  color: Colors.grey,
                ))
              ],
            ),
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthMethodImagebox(
                  imagePath: AppAssets.google,
                ),
                Gap(20),
                AuthMethodImagebox(
                  imagePath: AppAssets.facebook,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
