import 'package:algoriza_task_1/features/auth/presentation/login_screen.dart';
import 'package:algoriza_task_1/features/auth/presentation/sign_up_screen.dart';
import 'package:algoriza_task_1/features/splash/presentation/on_boarding.dart';
import 'package:algoriza_task_1/features/splash/presentation/splash_screen.dart';
import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:flutter/material.dart';

class AppRouting {
  // a function to call on the material app to generate named routes...
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kSplashScreen:
        return PageRouteBuilder(
            pageBuilder: (context, animation, sa) => const SplashScreen());
      case kOnBoardingScreen:
        return PageRouteBuilder(
            pageBuilder: (context, animation, sa) => OnBoardingScreen());
      case kLoginScreen:
        return PageRouteBuilder(
            pageBuilder: (context, animation, sa) => const LoginScreen());
      case kSignupScreen:
        return PageRouteBuilder(
            pageBuilder: (context, animation, sa) => const SignUpScreen());
    }
  }
}
