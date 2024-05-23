import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';

class NewReciepeCard extends StatelessWidget {
  final Animation<double> anim;
  const NewReciepeCard({required this.anim, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15.0),
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.02, vertical: size.height * 0.02),
          width: size.width * 0.8,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: Text(
                          "Steak with tomato sauce and bulgur rice.",
                          overflow: TextOverflow.ellipsis,
                          style: Styles.miniBold
                              .copyWith(color: AppColor.borderColor),
                        ),
                      ),
                      const Gap(10),
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(AppAssets.person),
                            foregroundImage: AssetImage(AppAssets.person),
                          ),
                          Gap(5),
                          Text("By James Milner")
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerRight,
                      height: size.height * 0.08,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(AppAssets.dummyDish),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
