import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_strings.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppStrings.favDishes,
        ),
      ),
      body: Center(
        child: ListView(),
      ),
    );
  }
}
