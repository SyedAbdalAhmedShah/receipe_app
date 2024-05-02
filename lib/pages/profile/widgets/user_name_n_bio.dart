import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:readmore/readmore.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';

class UserNameAndBio extends StatelessWidget {
  const UserNameAndBio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        Text(
          "Jega Abiodun",
          style: Styles.miniBold.copyWith(fontSize: 22),
        ),
        const Gap(5),
        const Text("Chef", style: TextStyle(color: AppColor.categoryCardColor)),
        const Gap(20),
        ReadMoreText(
          'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase. \nPrivate Chef \nPassionate about food and life 🥘🍲🍝🍱',
          trimMode: TrimMode.Line,
          trimLines: 2,
          isExpandable: true,
          colorClickableText: Colors.pink,
          trimCollapsedText: 'More',
          trimExpandedText: 'Less',
          style: const TextStyle(color: AppColor.borderColor),
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary),
        )
      ],
    );
  }
}
