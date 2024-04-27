import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/pages/auth/sign_in.dart';
import 'package:receipe_app/server/server_constants.dart';
import 'package:receipe_app/utils/app_validations.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/widgets/auth_method_image-box.dart';
import 'package:receipe_app/widgets/or_divider.dart';
import 'package:receipe_app/widgets/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late Client client;
  late Account account;

  @override
  void initState() {
    client = Client()
        .setEndpoint(ServerConstants.serverEndPoint) // Your API Endpoint
        .setProject(ServerConstants.projectId);
    account = Account(client);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(20),
                const Text(
                  AppStrings.createAccount,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                const Text(
                  AppStrings.letsHelp,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const Gap(20),
                const Text(
                  AppStrings.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Gap(5),
                AppTextField(
                  validator: AppValidations.nameValidtion,
                  hint: AppStrings.enterName,
                  controller: nameController,
                ),
                const Gap(25),
                const Text(
                  AppStrings.email,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Gap(5),
                AppTextField(
                  hint: AppStrings.enterName,
                  controller: emailController,
                ),
                const Gap(25),
                const Text(
                  AppStrings.pass,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Gap(5),
                AppTextField(
                  hint: AppStrings.enterPass,
                  controller: passController,
                ),
                const Gap(25),
                const Text(
                  AppStrings.confirmPass,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Gap(5),
                AppTextField(
                  hint: AppStrings.retypePass,
                  controller: confirmPassController,
                ),
                const Gap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                        gapBTWidget: 20,
                        buttonName: AppStrings.signUp,
                        width: size.width * 0.9,
                        onTap: () async {
                          if (formKey.currentState?.validate() ?? false) {
                            final user = await account.create(
                                userId: ID.unique(),
                                email: emailController.text.trim(),
                                name: nameController.text,
                                password: passController.text);
                            log("user info ${user.$id}, ${user.name} , ${user.email}");
                          }
                        },
                        icon: Icons.adaptive.arrow_forward),
                  ],
                ),
                const Gap(15),
                const OrDivider(),
                const Gap(15),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.alreadyMember,
                      style: Styles.miniBold,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () =>
                          Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      )),
                      child: Text(
                        AppStrings.signIn,
                        style: Styles.miniBoldSeconndaryColo,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
