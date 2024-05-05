import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:receipe_app/constants/app_assets.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.17,
        width: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: const AssetImage(AppAssets.dummyDish2),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.dstATop),
            )));
  }
}
