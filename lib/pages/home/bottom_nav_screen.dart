import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/nav_bar_bloc/cubit/navigation_bar_cubit.dart';
import 'package:receipe_app/pages/favourite/favourtie_screen.dart';
import 'package:receipe_app/pages/home/home.dart';
import 'package:receipe_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:receipe_app/pages/home/widgets/home_floating_button.dart';
import 'package:receipe_app/pages/notification/notification.dart';
import 'package:receipe_app/pages/profile/profile.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  @override
  void initState()  {
     connectWebSockets();
    super.initState();
  }

  connectWebSockets() async {
    final wsUri = Uri.parse(
        "ws://cloud.appwrite.io/v1/realtime?project=662d029d002952b12a38&channels%5B%5D=databases.663a732a0007f78c7d69.collections.66423f64001a67aebc41.documents");
    final channel = WebSocketChannel.connect(wsUri);
    await channel.ready;
    channel.stream.listen((event) => log("event $event"),
        onError: (error) => log("Error $error"));
  }

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
