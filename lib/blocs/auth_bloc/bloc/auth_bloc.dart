import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:receipe_app/repositories/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository = AuthRepository();

  AuthBloc() : super(AuthInitial()) {
    on<SignInEvent>((event, emit) async {
      try {
        emit(AuthLoadingState());
        await authRepository.signInWithEmailAndPassword(email: event.email, password: event.password);
        emit(SignedState());
      } on AppwriteException catch (appW) {
        log('app writee exception ${appW.message}');
      } catch (e) {
        log("ERROR $e");
        emit(AuthFailureState(errorMessage: e.toString()));
      }
    });

    on<SignUpEvent>((event, emit) async {
      try {
        emit(AuthLoadingState());
        await authRepository.createEmailPassword(
            email: event.email, password: event.password, userName: event.userName);
        emit(SignedUpState());
      } on AppwriteException catch (appW) {
        log('app writee exception ${appW.message}');
      } catch (e) {
        emit(AuthFailureState(errorMessage: e.toString()));
      }
    });

    on<LogOut>(
      (event, emit) async {
        try {
          await authRepository.logOut();
        } catch (error) {
          emit(AuthFailureState(errorMessage: error.toString()));
        }
      },
    );
  }
}
