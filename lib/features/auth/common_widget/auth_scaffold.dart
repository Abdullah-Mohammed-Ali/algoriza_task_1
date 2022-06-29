import 'package:flutter/material.dart';

import '../../../const/images_path.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    Key? key,
    required this.top,
    required this.body,
  }) : super(key: key);
  final double top;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(kAuthBack), fit: BoxFit.fill),),
        ),
        Positioned(
          top: top,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - top,
            width: MediaQuery.of(context).size.width,
            child: body,
          ),
        ),
      ],
    );
  }
}
