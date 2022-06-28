import 'package:algoriza_task_1/features/splash/presentation/widgets/buttons.dart';
import 'package:algoriza_task_1/features/splash/presentation/widgets/on_boarding.dart';
import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../../../const/images_path.dart';
import '../../../const/strings.dart';
import '../../../core/common_widget/main_scaffold.dart';
import '../model/on_boarding_model.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  List<OnBoardingModel> pages = [
    OnBoardingModel(kOnBoarding1, kTitle1, kSubTitle1),
    OnBoardingModel(kOnBoarding2, kTitle2, kSubTitle2),
  ];
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SkipButton(),
            const AppName(),
            OnBoarding(pages: pages),
            const SizedBox(
              height: 20,
            ),
            const DefaultButton(title: 'Get Started'),
            GoToRegister(onPressed: () {
              Navigator.pushReplacementNamed(context, kSignupScreen);
            })
          ],
        ),
      ),
    );
  }
}
