import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/nav_bar_bloc/cubit/navigation_bar_cubit.dart';
import 'package:receipe_app/pages/favourite/favourtie_screen.dart';
import 'package:receipe_app/pages/home/home.dart';
import 'package:receipe_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:receipe_app/pages/home/widgets/home_floating_button.dart';
import 'package:receipe_app/pages/notification/notification.dart';
import 'package:receipe_app/pages/profile/profile.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    final navCubit = context.read<NavigationBarCubit>();
    return Scaffold(
      body: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          return IndexedStack(
            index: navCubit.navPageIndex,
            
            children: const [
              HomeScreen(),
              FavouriteScreen(),
              NotificationScreen(),
              ProfileScreen()
            ],
          );
        },
      ),
      floatingActionButton: const HomeFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
