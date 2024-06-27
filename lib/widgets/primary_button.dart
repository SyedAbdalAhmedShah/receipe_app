import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonName;
  final EdgeInsets? padding;
  final IconData icon;
  final Function() onTap;
  final double? gapBTWidget;

  const PrimaryButton(
      {required this.buttonName,
      required this.onTap,
      this.padding,
      this.gapBTWidget,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: padding ?? EdgeInsets.zero,
        height: size.height * 0.08,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: const TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Gap(gapBTWidget ?? 10),
            Icon(
              icon,
              color: AppColor.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
