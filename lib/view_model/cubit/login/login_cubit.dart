import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPasswordVisible = false ;



  void togglePasswordVisibility() {

    isPasswordVisible = !isPasswordVisible;
    emit(LoginPasswordVisibilityToggled(isPasswordVisible));
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

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

}
