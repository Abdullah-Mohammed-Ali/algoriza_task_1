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
        return fadeRouting(screen: OnBoardingScreen());
      case kLoginScreen:
        return fadeRouting(screen: const LoginScreen());

      case kSignupScreen:
        return fadeRouting(screen: const SignUpScreen());
    }
  }

  PageRouteBuilder<dynamic> fadeRouting({required Widget screen}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, sa) => screen,
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (_, animation, sa, child) {
        var start = 0.0;
        var end = 1.0;
        var tween = Tween<double>(
          begin: start,
          end: end,
        );

        var opacityAnimation = animation.drive(tween);
        return FadeTransition(
          opacity: opacityAnimation,
          child: child,
        );
      },
    );
  }
}
