import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.twistingDots(
        leftDotColor: Theme.of(context).colorScheme.secondary,
        rightDotColor: Theme.of(context).colorScheme.primary,
        size: 50,
      ),
    );
  }
}
