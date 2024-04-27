import 'package:flutter/material.dart';

class AuthMethodImagebox extends StatelessWidget {
  final String imagePath;
  const AuthMethodImagebox({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: kElevationToShadow[3],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)),
      child: Image(
        image: AssetImage(imagePath),
        height: 40,
        width: 50,
      ),
    );
  }
}
