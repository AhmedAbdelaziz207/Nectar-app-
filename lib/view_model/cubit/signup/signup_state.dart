part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupFailure extends SignupState {
  final String errorMessage;
  SignupFailure({required this.errorMessage});
}

final class SignupSuccess extends SignupState {}

final class SignupPasswordToggle extends SignupState {
  final bool passwordVisibility;

  SignupPasswordToggle({required this.passwordVisibility});
}

final class SignupValidEmail extends SignupState {}

final class SignupNavigateToLogin extends SignupState {}
