import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';


class ProdcutDetailScreen extends StatelessWidget {
  final ProductModel productModel;
  final String heroTag;
  const ProdcutDetailScreen(
      {required this.productModel, required this.heroTag, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: heroTag,
              transitionOnUserGestures: true,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        offset: const Offset(-2, 3),
                        blurStyle: BlurStyle.outer,
                        color: Colors.grey.withOpacity(0.5),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(AppAssets.dummyDish))),
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Classic Greek Salad",
                  textAlign: TextAlign.center,
                  style: Styles.miniBold.copyWith(color: AppColor.borderColor),
                ),
                const Text(
                  '(13k Reviews)',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
