import 'package:algoriza_task_1/const/colors.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../model/on_boarding_model.dart';

class GoToRegister extends StatelessWidget {
  GoToRegister({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Don\'t have an account?'),
          TextButton(onPressed: onPressed, child: const Text('Sign up'))
        ],
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    Key? key,
    required this.pages,
  }) : super(key: key);

  final List<OnBoardingModel> pages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          viewportFraction: 1,
          disableCenter: true,
        ),
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            children: [
              Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height / 5,
                    child: Image.asset(
                      pages[index].image,
                      fit: BoxFit.contain,
                    )),
              ),
              Text(
                pages[index].title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  pages[index].subTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 12, color: Colors.grey.shade500),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class AppName extends StatelessWidget {
  const AppName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: [
        TextSpan(
            text: '7', style: TextStyle(color: MyColors.appName, fontSize: 35)),
        TextSpan(
            text: 'Krave',
            style: TextStyle(color: MyColors.primary, fontSize: 35))
      ]),
    );
  }
}
