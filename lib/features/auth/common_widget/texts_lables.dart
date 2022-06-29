import 'package:flutter/material.dart';

class WelcomeCaption extends StatelessWidget {
  const WelcomeCaption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to 7Krave',
      style: Theme.of(context).textTheme.caption,
    );
  }
}

class AuthTitle extends StatelessWidget {
  const AuthTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        GestureDetector(
          child: Row(children: const [
            Text(
              'Help',
              style: TextStyle(color: Colors.blue),
            ),
            Icon(
              Icons.question_mark,
              size: 17,
              color: Colors.blue,
            )
          ]),
        )
      ],
    );
  }
}
