import 'package:algoriza_task_1/const/colors.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/on_boarding_model.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({
    Key? key,
    required this.pages,
  }) : super(key: key);

  final List<OnBoardingModel> pages;

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                onPageChanged: (index, changeReason) => setState(() {
                  activeIndex = index;
                }),
                viewportFraction: 1,
                disableCenter: true,
              ),
              itemCount: widget.pages.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Column(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height / 5,
                          child: Image.asset(
                            widget.pages[index].image,
                            fit: BoxFit.contain,
                          )),
                    ),
                    Text(
                      widget.pages[index].title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        widget.pages[index].subTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12, color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Expanded(
              child: AnimatedSmoothIndicator(
                effect:
                    const ExpandingDotsEffect(activeDotColor: MyColors.primary),
                activeIndex: activeIndex,
                count: widget.pages.length,
              ),
            ),
          ),
        ],
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
