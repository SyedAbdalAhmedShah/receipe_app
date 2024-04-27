import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_strings.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Gap(10),
        Text(AppStrings.orSignUp),
        Gap(10),
        Expanded(
            child: Divider(
          color: Colors.grey,
        ))
      ],
    );
  }
}
