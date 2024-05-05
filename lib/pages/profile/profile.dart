import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/pages/profile/widgets/dish_card.dart';
import 'package:receipe_app/pages/profile/widgets/profile_info.dart';
import 'package:receipe_app/pages/profile/widgets/profile_info_button.dart';
import 'package:receipe_app/pages/profile/widgets/user_name_n_bio.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                AppStrings.profile,
                style: Styles.miniBold.copyWith(fontSize: 22),
              ),
            ),
            const SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  ProfileInfoSection(),
                  UserNameAndBio(),
                  Gap(40),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      2,
                      (index) => ProfileInfoButton(
                            index: index,
                          )),
                ),
                const Gap(10),
                DishCard()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
