part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {}

final class LoginFailure extends LoginState {
  final String error;

  LoginFailure(this.error);
}

final class LoginNavigationToSignup extends LoginState {}

final class LoginPasswordVisibilityToggled extends LoginState {
  final bool isPasswordVisible;

  LoginPasswordVisibilityToggled(this.isPasswordVisible);
}
