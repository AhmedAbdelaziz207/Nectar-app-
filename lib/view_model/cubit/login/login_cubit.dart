import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool _isPasswordVisible = false ;



  void togglePasswordVisibility() {

    _isPasswordVisible = !_isPasswordVisible;
    emit(LoginPasswordVisibilityToggled(_isPasswordVisible));
  }

  void navigateToSignupScreen(){
    emit(LoginNavigationToSignup());
  }

  Future<void> login() async {
    emit(LoginLoading());

    await Future.delayed(const Duration(seconds: 2));

    if (emailController.text == "test@gmail.com" && passwordController.text == "admin123") {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure("Invalid email or password"));
    }
  }


}
