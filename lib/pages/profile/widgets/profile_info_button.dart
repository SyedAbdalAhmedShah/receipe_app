import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:receipe_app/constants/app_strings.dart';

class ProfileInfoButton extends StatelessWidget {
  const ProfileInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        AnimatedContainer(
          height: size.height * 0.05,
          width: size.width * 0.4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).colorScheme.primary.withAlpha(60)),
          duration: Durations.extralong4,
          child: const Text(AppStrings.reciepe),
        ),
      ],
    );
  }
}
