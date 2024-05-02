import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:receipe_app/constants/app_strings.dart';

class ProfileInfoButton extends StatelessWidget {
  final int index;
  const ProfileInfoButton({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        GestureDetector(
          onTap: () => print("index $index"),
          child: AnimatedContainer(
            height: size.height * 0.05,
            width: size.width * 0.4,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: index == 0
                    ? Theme.of(context).colorScheme.primary.withAlpha(60)
                    : Colors.transparent),
            duration: Durations.extralong4,
            child: const Text(AppStrings.reciepe),
          ),
        ),
      ],
    );
  }
}
