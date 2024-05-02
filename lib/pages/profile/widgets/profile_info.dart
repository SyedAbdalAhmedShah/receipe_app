import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: size.width * 0.3 / 2,
          backgroundImage: const AssetImage(AppAssets.dummyCheif),
        ),
        const InfoTitlenSubtitle(
          subtitle: "5",
          title: AppStrings.reciepe,
        ),
        const InfoTitlenSubtitle(
          subtitle: "2.5M",
          title: AppStrings.followers,
        ),
        const InfoTitlenSubtitle(
          subtitle: "259",
          title: AppStrings.following,
        )
      ],
    );
  }
}

class InfoTitlenSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const InfoTitlenSubtitle({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const Gap(5),
        Text(
          subtitle,
          style: Styles.miniBold,
        )
      ],
    );
  }
}
