part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoadingState extends AuthState {}

final class LogedInState extends AuthState {}

final class SignedUpState extends AuthState {
  final TextEditingController emailController;

  SignedUpState({required this.emailController});
}

final class LogOutState extends AuthState {}

final class UserAlreadyLoggedIn extends AuthState {}

final class NewUserLogedIn extends AuthState {}

final class AuthFailureState extends AuthState {
  final String errorMessage;

  AuthFailureState({required this.errorMessage});
}
