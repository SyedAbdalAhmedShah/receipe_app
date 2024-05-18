import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/nav_bar_bloc/cubit/navigation_bar_cubit.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';

class ProfilePictureSection extends StatelessWidget {
  const ProfilePictureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final navCubit = context.read<NavigationBarCubit>();
    return InkWell(
      onTap: () => navCubit.updateNavPage(3),
      child: Container(
        height: size.height * 0.05,
        decoration: BoxDecoration(
            color: AppColor.profileBackgroundColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: const Image(image: AssetImage(AppAssets.dummyProfile)),
      ),
    );
  }
}
