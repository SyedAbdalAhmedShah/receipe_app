import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/fav_dish/favourtire_dish_bloc.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/pages/profile/widgets/dish_card.dart';
import 'package:receipe_app/repositories/fav_dish_repo.dart';
import 'package:receipe_app/widgets/loading_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen>
    with FavouriteDishRepository {
  late Stream<AppUser> appUserStream;
  @override
  void initState() {
    context
        .read<FavourtireDishBloc>()
        .add(const FavourtireDishEvent.myFavouriteDishes());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppStrings.favDishes,
        ),
      ),
      body: BlocListener<FavourtireDishBloc, FavourtireDishState>(
        listener: (context, state) {
          state.mapOrNull(
            realTimeSubscribedState: (value) => appUserStream = value.userData,
          );
        },
        child: BlocBuilder<FavourtireDishBloc, FavourtireDishState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                context
                    .read<FavourtireDishBloc>()
                    .add(const FavourtireDishEvent.myFavouriteDishes());
                return const SizedBox();
              },
              loadingState: () => const AppLoading(),
              failureState: () {
                return const SizedBox();
              },
              markAsFavourtireState: () {
                return StreamBuilder(
                  stream: appUserStream,
                  builder: (context, snapshot) => ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    itemCount: snapshot.data?.favouriteDishes?.length ?? 0,
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                    itemBuilder: (context, index) => const DishCard(),
                  ),
                );
              },
              markAsUnfavourtireState: () {
                return StreamBuilder(
                  stream: appUserStream,
                  builder: (context, snapshot) => ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    itemCount: snapshot.data?.favouriteDishes?.length ?? 0,
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                    itemBuilder: (context, index) => const DishCard(),
                  ),
                );
              },
              realTimeSubscribedState: (value) {
                return StreamBuilder(
                  stream: appUserStream,
                  builder: (context, snapshot) => ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    itemCount: snapshot.data?.favouriteDishes?.length ?? 0,
                    separatorBuilder: (context, index) =>
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                    itemBuilder: (context, index) => const DishCard(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
