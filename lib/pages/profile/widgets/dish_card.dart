import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.02),
      // foregroundDecoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(15.0),
      //   gradient: const LinearGradient(
      //     colors: [
      //       Colors.black45,
      //       Colors.transparent,
      //     ],
      //     begin: Alignment.bottomCenter,
      //     end: Alignment.topCenter,
      //     stops: [0, 0.8],
      //   ),
      // ),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[0],
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: const AssetImage(AppAssets.dummyDish2),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), BlendMode.dstATop),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Traditional spare ribs baked',
                  maxLines: 2,
                  style: Styles.miniBold.copyWith(fontSize: 20),
                ),
                Text(
                  'By Chef John',
                  maxLines: 2,
                  style: Styles.hintTextStyle.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Icon(Icons.av_timer_outlined, color: AppColor.whiteColor),
                const Gap(5),
                const Text(
                  '20 min',
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                const Gap(10),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColor.whiteColor,
                    child: Image(
                      image: const AssetImage(AppAssets.favIcon),
                      height: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
