import 'package:flutter/material.dart';

import '../../const/colors.dart';
// use this scaffold to add linear gradient for all screens...

class MainScaffold extends StatelessWidget {
  final Widget body;
  const MainScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, MyColors.gradientBackgroundGrey],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: body,
          ),
        ),
      ),
    );
  }
}
