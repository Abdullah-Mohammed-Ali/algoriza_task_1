import 'package:flutter/material.dart';

import '../../../../const/colors.dart';
import '../../../../routing/route_names.dart';

// for all buttons in the app..
class DefaultButton extends StatelessWidget {
  DefaultButton({
    Key? key,
    this.padding = 0,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: MaterialButton(
          onPressed: onPressed,
          color: MyColors.primary,
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

// for sign in and sign up by social (add social icon)..
class SocialButton extends StatelessWidget {
  SocialButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.prefix,
  }) : super(key: key);
  final String title;
  final VoidCallback onPressed;
  Widget? prefix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.primary),
          borderRadius: BorderRadius.circular(16),
        ),
        child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefix ?? const SizedBox(),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(color: MyColors.primary),
                ),
              ],
            )),
      ),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushReplacementNamed(context, kLoginScreen);
            },
            color: MyColors.skipButton,
            elevation: 0,
            child: const Text('Skip'),
          ),
        )
      ],
    );
  }
}

class FullTextButton extends StatelessWidget {
  FullTextButton({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.buttonTitle,
  }) : super(key: key);
  final VoidCallback onPressed;
  final String title;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        TextButton(onPressed: onPressed, child: Text(buttonTitle))
      ],
    );
  }
}
