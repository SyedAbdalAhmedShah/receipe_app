import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:receipe_app/blocs/fav_dish/favourtire_dish_bloc.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/repositories/fav_dish_repo.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen>
    with FavouriteDishRepository {
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
      body: Center(
        child: ListView(),
      ),
    );
  }
}
