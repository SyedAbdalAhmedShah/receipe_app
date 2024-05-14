import 'dart:convert';
import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/repositories/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository = AuthRepository();

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

    on<LogOut>(
      (event, emit) async {
        try {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          String? userData = preferences.getString(ServerStrings.userDataKey);
          AppUser appUser = AppUser.fromJson(json.decode(userData!));

          log("APP USER ${appUser.userId} == ${appUser.userName} == ${appUser.profileUrl} == ${appUser.databaseId} === ${appUser.collectionId}");

          // await authRepository.logOut();
        } catch (error) {
          emit(AuthFailureState(
            errorMessage: error.toString(),
          ));
        }
      },
    );
  }
}
