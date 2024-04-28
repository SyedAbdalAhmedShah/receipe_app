import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_assets.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      
      notchMargin: 10,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(AppAssets.homeIcon),
            height: 30,
            color: Colors.white,
          ),
          Image(
            image: AssetImage(AppAssets.favIcon),
            height: 30,
            color: Colors.white,
          ),
          Image(
            image: AssetImage(AppAssets.notificationIcon),
            height: 30,
            color: Colors.white,
          ),
          Image(
            image: AssetImage(AppAssets.profileIcon),
            height: 30,
            color: Colors.white,
          )
        ],
      ),
    );
    ;
  }
}
