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
          color: Colors.amber,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage(AppAssets.homeIcon),
                    height: 30,
                    color: navCubit.navPageIndex == 0
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage(AppAssets.favIcon),
                    height: 30,
                    color: navCubit.navPageIndex == 1
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage(AppAssets.notificationIcon),
                    height: 30,
                    color: navCubit.navPageIndex == 2
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () => navCubit.updateNavPage(3),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage(AppAssets.profileIcon),
                    height: 30,
                    color: navCubit.navPageIndex == 3
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
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
