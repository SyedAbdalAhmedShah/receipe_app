import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/nav_bar_bloc/cubit/navigation_bar_cubit.dart';
import 'package:receipe_app/constants/app_assets.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationBarCubit>();
    return BlocBuilder<NavigationBarCubit, NavigationBarState>(
      builder: (context, state) {
        return BottomAppBar(
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(0),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(AppAssets.homeIcon),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(1),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(AppAssets.favIcon),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(2),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(AppAssets.notificationIcon),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(3),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(AppAssets.profileIcon),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
