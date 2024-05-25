import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/repositories/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> with HomeRepository {
  HomeBloc() : super(const _Initial()) {
    on<_FetchDishes>((event, emit) async {
      try {
        emit(const _LoadingState());
        List<ProductModel> products = await getAllDishes();
        emit(_DishesFetchedSuccessState(products: products));
      } catch (error) {
        log("Error22 $error");
        emit(_ErrorState(errorMessage: error.toString()));
      }
    });
  
  }
}
