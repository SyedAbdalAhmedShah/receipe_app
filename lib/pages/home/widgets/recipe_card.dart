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
    return Container(
      width: size.width * 0.45,
      height: size.height * 0.23,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Gap(10),
          Container(
            width: double.maxFinite,
            height: size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.dummyDish), fit: BoxFit.fill)),
          ),
          const Gap(20),
          Text(
            "Classic Greek Salad",
            textAlign: TextAlign.center,
            style: Styles.miniBold.copyWith(color: AppColor.borderColor),
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
                    style: TextStyle(color: AppColor.borderColor),
                  ),
                  Text(
                    "15 Mins",
                    textAlign: TextAlign.center,
                    style:
                        Styles.miniBold.copyWith(color: AppColor.borderColor),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: AppColor.whiteColor,
                child: Image(
                  image: const AssetImage(AppAssets.favIcon),
                  height: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          )
        ],
      ),
    );

    ;
  }
}
