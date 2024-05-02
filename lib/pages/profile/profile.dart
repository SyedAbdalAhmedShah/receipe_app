import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.profile,
          style: Styles.miniBold.copyWith(fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Center(
        child: Text("Profile"),
      ),
    );
  }
}
