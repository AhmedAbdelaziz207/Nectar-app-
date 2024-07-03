import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _passwordVisibility = false;

  void togglePasswordVisibility() {
    _passwordVisibility = !_passwordVisibility;
    emit(SignupPasswordToggle(passwordVisibility: _passwordVisibility));
  }

  void onEmailChange(email) {
    if (isValidEmail(email)) {
      emit(SignupValidEmail());
    }
  }

  bool isValidEmail(email) {
    if ((RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email!))) {
      return true;
    }

    return false;
  }

  Future<void> submit() async {
    emit(SignupLoading());
    await Future.delayed(const Duration(seconds: 2));


    if (formKey.currentState!.validate()) {
      emit(SignupSuccess());
    }
  }

  void navigateToLogin() {
    emit(SignupNavigateToLogin());
  }
}
