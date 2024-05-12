import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/blocs/auth_bloc/bloc/auth_bloc.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/pages/auth/sign_up.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/widgets/auth_method_image-box.dart';
import 'package:receipe_app/widgets/or_divider.dart';
import 'package:receipe_app/widgets/primary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

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
            AppTextField(
              hint: AppStrings.enterEmail,
              controller: emailController,
            ),
            const Gap(30),
            const Text(
              AppStrings.enterPass,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Gap(5),
            AppTextField(
              obscureText: true,
              hint: AppStrings.enterPass,
              controller: passController,
            ),
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
                    onTap: () {
                      authBloc.add(SignInEvent(
                          email: emailController.text,
                          password: passController.text));
                    },
                    icon: Icons.adaptive.arrow_forward),
              ],
            ),
            const Gap(20),
            const OrDivider(),
            const Gap(30),
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
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.dontHaveAcc,
                  style: Styles.miniBold,
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  )),
                  child: Text(
                    AppStrings.signUp,
                    style: Styles.miniBoldSeconndaryColo,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
