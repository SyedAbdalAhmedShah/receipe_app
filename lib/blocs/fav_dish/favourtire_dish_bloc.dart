import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/repositories/fav_dish_repo.dart';

part 'favourtire_dish_event.dart';
part 'favourtire_dish_state.dart';
part 'favourtire_dish_bloc.freezed.dart';

class FavourtireDishBloc extends Bloc<FavourtireDishEvent, FavourtireDishState>
    with FavouriteDishRepository {
  FavourtireDishBloc() : super(const _Initial()) {
    on<_MarkAsFavourtire>((event, emit) async {
      emit(const _LoadingState());
      try {
        await markAsFavourtire(event.favDish);
        emit(const _MarkAsFavourtireState());
      } catch (error) {
        log("error happened $error");
        emit(const _MarkAsFavourtireState());
      }
    });
    on<_MyFavouriteDishes>( 
      (event, emit) async {
        emit(const _LoadingState());
        try {
          Stream<AppUser> appUserStream = getMyFavRealTime();
          emit(_RealTimeSubscribedState(userData: appUserStream));
        } catch (error) {
          log("Error $error");
        }
      },
    );
  }
}
