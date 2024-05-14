import 'dart:convert';
import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/shared_pref.dart';
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
          if (userData != null) {
            AppUser appUser = AppUser.fromJson(json.decode(userData));

            log("APP USER ${appUser.userId} == ${appUser.userName} == ${appUser.profileUrl} == ${appUser.databaseId} === ${appUser.collectionId}");
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

        await authRepository.logOut();
      } catch (error) {
        emit(AuthFailureState(
          errorMessage: error.toString(),
        ));
      }
    });
  }
}
