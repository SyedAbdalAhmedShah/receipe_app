import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:receipe_app/blocs/auth_bloc/bloc/auth_bloc.dart';
import 'package:receipe_app/blocs/profile_bloc/bloc/profile_bloc.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/constants/styles.dart';
import 'package:receipe_app/pages/profile/widgets/dish_card.dart';
import 'package:receipe_app/pages/profile/widgets/profile_info.dart';
import 'package:receipe_app/pages/profile/widgets/profile_info_button.dart';
import 'package:receipe_app/pages/profile/widgets/user_name_n_bio.dart';
import 'package:receipe_app/pages/splash/splash_screen.dart';
import 'package:receipe_app/utils/extensions.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  if (state is LogOutState) {
                    context.pushRemoveUntil(child: const Splashscreen());
                  }
                },
                child: ListTile(
                  onTap: () {
                    context.read<AuthBloc>().add(LogOut());
                  },
                  splashColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  iconColor: Theme.of(context).colorScheme.primary,
                  textColor: Theme.of(context).colorScheme.primary,
                  title: const Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  trailing: const Icon(Icons.logout),
                ),
              )
            ],
          ),
        ),
      ),
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
              delegate: SliverChildListDelegate([
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      2,
                      (index) => ProfileInfoButton(
                            index: index,
                          )),
                ),
                const Gap(10),
              ]),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return SliverList.builder(
                    addAutomaticKeepAlives: true,
                    findChildIndexCallback: (key) {
                      return 0;
                    },
                    itemCount: 20,
                    itemBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: DishCard(
                            cheifName: "By Chef John",
                            minutes: "20 min",
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
