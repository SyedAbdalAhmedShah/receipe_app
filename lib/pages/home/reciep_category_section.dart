import 'package:flutter/material.dart';
import 'package:receipe_app/constants/constants.dart';

class ReciepeCategorySection extends StatelessWidget {
  const ReciepeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: Constants.dummyCategories.length,
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemBuilder: (context, index) {
            return Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: ColoredBox(
                    color: index == 0
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15.0),
                      child: Text(
                        Constants.dummyCategories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: index != 0
                              ? Theme.of(context).colorScheme.primary
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
