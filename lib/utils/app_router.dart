import 'package:flutter/material.dart';
import 'package:groceries_app/view/screens/auth/login/login_screen.dart';
import '../view/screens/auth/signup/signup_screen.dart';
import '../view/screens/home/home_screen.dart';
import '../view/screens/onboarding/onboarding_screen.dart';
import '../view/screens/splash/splash_screen.dart';
import 'constants/routes.dart';

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
            return const LoginScreen();
          },
        );
  case Routes.signup:
       return MaterialPageRoute(
          builder: (BuildContext context) {
            return const SignupScreen();
          },
        );

      default:
       return MaterialPageRoute(
          builder: (BuildContext context) {
            return const Scaffold(
                body: Center(
                    child: Text(
              "NO, Route Found... ",
              style: TextStyle(fontSize: 24 ),
            )));
          },
        );
    }
  }
}
