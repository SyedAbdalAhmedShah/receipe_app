import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';

class ProfilePictureSection extends StatelessWidget {
  const ProfilePictureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.05,
      decoration: BoxDecoration(
          color: AppColor.profileBackgroundColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: const Image(image: AssetImage(AppAssets.dummyProfile)),
    );
  }
}
