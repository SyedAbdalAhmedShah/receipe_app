import 'dart:convert';
import 'dart:developer';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/shared_pref.dart';
import 'package:receipe_app/model/cache_user.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/repositories/auth_repo.dart';
import 'package:receipe_app/utils/dependency.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository = AuthRepository();
  SharedPreferences sharedPref = serviceLocator.get<SharedPref>().preferences;
  AuthBloc() : super(AuthInitial()) {
    on<SignInEvent>((event, emit) async {
      try {
        emit(AuthLoadingState());
        await authRepository.signInWithEmailAndPassword(
            email: event.email, password: event.password);

        emit(SignedState());
      } on AppwriteException catch (appW) {
        emit(AuthFailureState(errorMessage: appW.message.toString()));
      } catch (e) {
        emit(AuthFailureState(errorMessage: e.toString()));
      }
    });

    on<SignUpEvent>((event, emit) async {
      try {
        emit(AuthLoadingState());
        await authRepository.createEmailPassword(
            email: event.email,
            password: event.password,
            userName: event.userName);
        emit(SignedUpState());
      } on AppwriteException catch (appW) {
        emit(AuthFailureState(errorMessage: appW.message.toString()));
      } catch (e) {
        emit(AuthFailureState(errorMessage: e.toString()));
      }
    });

    on<IsUserLogedIn>(
      (event, emit) async {
        try {
          emit(AuthLoadingState());

          String? userData = sharedPref.getString(ServerStrings.userDataKey);
          log("User data $userData");
          if (userData != null) {
            AppUser appUser = AppUser.fromJson(json.decode(userData));
            CacheUser.user = appUser;

            emit(UserAlreadyLoggedIn());
          } else {
            emit(NewUserLogedIn());
          }

          // await authRepository.logOut();
        } catch (error) {
          emit(AuthFailureState(
            errorMessage: error.toString(),
          ));
        }
      },
    );

    on<LogOut>((event, emit) async {
      try {
        emit(AuthLoadingState());
        await sharedPref.remove(ServerStrings.userDataKey);
        await authRepository.logOut();
        emit(LogOutState());
      } catch (error) {
        log('error $error');
        emit(AuthFailureState(
          errorMessage: error.toString(),
        ));
      }
    });
  }
}
