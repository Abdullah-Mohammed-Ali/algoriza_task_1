import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../splash/presentation/widgets/buttons.dart';

class SignInButtons extends StatelessWidget {
  const SignInButtons({
    Key? key,
    required this.title,
    required this.googleTitle,
  }) : super(key: key);
  final String title;
  final String googleTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DefaultButton(
            padding: 15,
            onPressed: () {},
            title: title,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Expanded(
              child: Divider(
                thickness: 1,
                height: 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Or'),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
                height: 4,
              ),
            ),
          ],
        ),
        SocialButton(
            prefix: const Icon(
              FontAwesomeIcons.google,
              color: Colors.deepOrangeAccent,
            ),
            title: googleTitle,
            onPressed: () {}),
      ],
    );
  }
}
