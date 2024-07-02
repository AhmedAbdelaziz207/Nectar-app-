import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries_app/view/screens/auth/login/login_screen.dart';
import 'package:groceries_app/view_model/cubit/login/login_cubit.dart';
import 'package:groceries_app/view_model/cubit/signup/signup_cubit.dart';
import '../../../view/screens/auth/signup/signup_screen.dart';
import '../../../view/screens/home/home_screen.dart';
import '../../../view/screens/onboarding/onboarding_screen.dart';
import '../../../view/screens/splash/splash_screen.dart';
import '../constants/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const HomeScreen();
          },
        );

      case Routes.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const SplashScreen();
          },
        );

      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const OnboardingScreen();
          },
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
              create: (context) => LoginCubit(),
              child: const LoginScreen(),
            );
          },
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
                create: (BuildContext context) {
                  return SignupCubit();
                },
                child: const SignupScreen());
          },
        );

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const Scaffold(
                body: Center(
                    child: Text(
              "NO, Route Found... ",
              style: TextStyle(fontSize: 24),
            )));
          },
        );
    }
  }
}
