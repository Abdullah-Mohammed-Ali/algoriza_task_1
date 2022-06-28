import 'package:flutter/material.dart';

import '../../../../const/colors.dart';
import '../../../../routing/route_names.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: MaterialButton(
              onPressed: () {},
              color: MyColors.primary,
              child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              )),
        ),
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
