import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/pages/auth/sign_in.dart';
import 'package:receipe_app/pages/home/bottom_nav_screen.dart';
import 'package:receipe_app/pages/home/home.dart';
import 'package:receipe_app/widgets/primary_button.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppAssets.splashBackground))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(60),
              const Image(
                image: AssetImage(
                  AppAssets.splashCap,
                ),
                height: 100,
              ),
              const Gap(10),
              const Text(
                AppStrings.hundardK,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              const Text(
                AppStrings.getCooking,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 60,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                AppStrings.simpleWay,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
              const Gap(60),
              PrimaryButton(
                buttonName: AppStrings.startCooking,
                icon: Icons.arrow_forward,
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BottomNavScreen(),
                )),
              ),
              const Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
