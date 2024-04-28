import 'package:flutter/material.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary, shape: BoxShape.circle),
      child: const Icon(Icons.add),
    );
  }
}
