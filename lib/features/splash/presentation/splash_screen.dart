import 'package:algoriza_task_1/features/splash/presentation/widgets/logo.dart';
import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../../../core/common_widget/main_scaffold.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    transition(2, kOnBoardingScreen);
  }

  void transition(int timeInSeconds, String nextScreen) {
    Future.delayed(Duration(seconds: timeInSeconds))
        .then((value) => Navigator.pushReplacementNamed(context, nextScreen));
  }

  @override
  Widget build(BuildContext context) {
    return const MainScaffold(
      body: Logo(),
    );
  }
}
