import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';

class ReciepCard extends StatelessWidget {
  const ReciepCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: size.height * 0.3,
        ),
        Positioned(
          top: size.height * 0.06,
          child: Container(
            width: size.width * 0.45,
            padding: const EdgeInsets.all(20.0),
            height: size.height * 0.23,
            decoration: BoxDecoration(
                color: AppColor.categoryCardColor,
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Gap(20),
                Text(
                  "Classic Greek Salad",
                  textAlign: TextAlign.center,
                  style: Styles.miniBold
                      .copyWith(color: AppColor.darkGreyTextColor),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Time",
                          style: TextStyle(color: AppColor.darkGreyTextColor),
                        ),
                        Text(
                          "15 Mins",
                          textAlign: TextAlign.center,
                          style: Styles.miniBold
                              .copyWith(color: AppColor.darkGreyTextColor),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColor.whiteColor,
                      child: Image(
                        image: AssetImage(AppAssets.favIcon),
                        height: 20,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: size.width * 0.2 / 1.8,
          top: 0,
          child: Container(
            height: size.height * 0.13,
            width: size.width * 0.23,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(AppAssets.dummyDish), fit: BoxFit.fill),
            ),
          ),
        )
      ],
    );
  }
}
