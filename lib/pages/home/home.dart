import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_assets.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/pages/home/widgets/home_floating_button.dart';
import 'package:receipe_app/pages/home/widgets/new_reciepe_card.dart';
import 'package:receipe_app/pages/home/widgets/reciep_category_section.dart';
import 'package:receipe_app/pages/home/widgets/recipe_card.dart';
import 'package:receipe_app/widgets/app_text_field.dart';
import 'package:receipe_app/pages/home/widgets/bottom_nav_bar.dart';
import 'package:receipe_app/widgets/profile_picture.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.dumyName,
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        AppStrings.whatCooking,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  ProfilePictureSection(),
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
                height: size.height * 0.3,
                child: ListView.separated(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: size.width * 0.05)),
                  itemBuilder: (context, index) => const ReciepCard(),
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
                  key: GlobalKey<AnimatedListState>(),
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
      ),
      floatingActionButton: const HomeFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
