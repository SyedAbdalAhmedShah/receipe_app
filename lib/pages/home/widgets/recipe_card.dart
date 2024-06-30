import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/blocs/fav_dish/favourtire_dish_bloc.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/pages/home/product_detail_screen.dart';
import 'package:receipe_app/repositories/fav_dish_repo.dart';
import 'package:receipe_app/utils/extensions.dart';
import 'package:receipe_app/widgets/cache_image.dart';

class ReciepCard extends StatelessWidget with FavouriteDishRepository {
  final ProductModel productModel;
  final int index;
  ReciepCard({required this.productModel, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      borderRadius: BorderRadius.circular(15.0),
      onTap: () {
        log("message", level: 2);
        context.push(
            child: ProdcutDetailScreen(
          heroTag: productModel.id ?? index.toString(),
          productModel: ProductModel(
              image: productModel.image, title: productModel.title),
        ));
      },
      child: Container(
        width: size.width * 0.5,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(10),
            Hero(
              tag: "Product-Image ${productModel.id}",
              transitionOnUserGestures: true,
              child: AppCacheImage(
                height: size.height * 0.2,
                width: double.maxFinite,
                image: productModel.image!,
              ),
            ),
            const Gap(10),
            Text(
              "${productModel.title}",
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.miniBold.copyWith(
                  color: AppColor.borderColor, fontWeight: FontWeight.w700),
            ),
            const Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Time",
                      style: TextStyle(color: AppColor.borderColor),
                    ),
                    Text(
                      "15 Mins",
                      textAlign: TextAlign.center,
                      style:
                          Styles.miniBold.copyWith(color: AppColor.borderColor),
                    ),
                  ],
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15.0),
                  splashColor: Theme.of(context).colorScheme.primary,
                  onTap: () {
                    context.read<FavourtireDishBloc>().add(
                        FavourtireDishEvent.markAsFavourtire(
                            favDish: productModel));
                  },
                  child: StreamBuilder(
                      stream: getMyFavRealTime(),
                      builder: (context, snapshot) {
                        List<ProductModel>? haveProduct =
                            snapshot.data?.favouriteDishes!
                                .where(
                                  (element) => element.id == productModel.id,
                                )
                                .toList();
                        return CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColor.whiteColor,
                          child: Image(
                            image: AssetImage(
                                haveProduct != null && haveProduct.isNotEmpty
                                    ? AppAssets.selectedFav
                                    : AppAssets.favIcon),
                            height: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        );
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
