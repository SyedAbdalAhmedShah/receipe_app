import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/blocs/fav_dish/favourtire_dish_bloc.dart';
import 'package:receipe_app/blocs/home_bloc/home_bloc.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/model/cache_user.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/pages/home/widgets/new_reciepe_card.dart';
import 'package:receipe_app/pages/home/widgets/reciep_category_section.dart';
import 'package:receipe_app/pages/home/widgets/recipe_card.dart';
import 'package:receipe_app/utils/app_dialog.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/widgets/loading_widget.dart';
import 'package:receipe_app/widgets/profile_picture.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<FavourtireDishBloc, FavourtireDishState>(
        listener: (context, state) {
          state.maybeWhen(
              markAsUnfavourtireState: () => AppDialogs.showToast(
                  ctx: context, message: AppStrings.addedAsFav),
              markAsFavourtireState: () => AppDialogs.showToast(
                  ctx: context, message: AppStrings.addedAsFav),
              failureState: () {},
              orElse: () {});
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                context.read<HomeBloc>().add(const HomeEvent.fetchDishes());
                return const SizedBox.shrink();
              },
              loadingState: () => const Center(
                child: AppLoading(),
              ),
              dishesFetchedSuccessState: (products) => _HomeSection(
                products: products,
              ),
              errorState: (errorMessage) => Center(
                child: Text(errorMessage),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HomeSection extends StatefulWidget {
  final List<ProductModel> products;
  const _HomeSection({required this.products, super.key});

  @override
  State<_HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<_HomeSection> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " ${AppStrings.hellow} ${CacheUser.user?.userName ?? AppStrings.dumyName}",
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                    const Text(
                      AppStrings.whatCooking,
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const ProfilePictureSection(),
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    height: size.height * 0.05,
                    child: AppTextField(
                        hint: AppStrings.searchReciepe,
                        controller: searchController),
                  ),
                ),
                Container(
                  height: size.height * 0.05,
                  padding: const EdgeInsets.all(10.0),
                  margin: EdgeInsets.only(left: size.width * 0.02),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Image(
                    image: AssetImage(AppAssets.settingIcon),
                  ),
                )
              ],
            ),
            const Gap(20),
            const ReciepeCategorySection(),
            const Gap(20),
            SizedBox(
              height: size.height * 0.38,
              child: ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    Padding(padding: EdgeInsets.only(right: size.width * 0.05)),
                itemBuilder: (context, index) => ReciepCard(
                  productModel: widget.products[index],
                  index: index,
                ),
              ),
            ),
            const Gap(20),
            const Text(
              AppStrings.newRecipes,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColor.secondaryColor),
            ),
            const Gap(20),
            SizedBox(
              height: size.height * 0.3,
              child: AnimatedList(
                initialItemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index, aanim) => NewReciepeCard(
                  anim: aanim,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
