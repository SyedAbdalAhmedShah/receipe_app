import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/app_strings.dart';

class splashscreen extends StatelessWidget {
  const splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppAssets.splashBackground))),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(60),
              Image(
                image: AssetImage(
                  AppAssets.splashCap,
                ),
                height: 100,
              ),
              Gap(10),
              Text(
                AppStrings.hundardK,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              Text(
                AppStrings.getCooking,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 60,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                AppStrings.simpleWay,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
