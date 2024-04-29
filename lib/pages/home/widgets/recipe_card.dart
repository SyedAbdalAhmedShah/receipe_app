import 'package:flutter/material.dart';
import 'package:receipe_app/constants/styles.dart';

class ReciepCard extends StatelessWidget {
  const ReciepCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            height: size.height * 0.2,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Classic Greek Salad",
                  style: Styles.miniBold,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
