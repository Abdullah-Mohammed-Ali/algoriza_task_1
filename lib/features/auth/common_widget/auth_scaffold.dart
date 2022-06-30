import 'package:algoriza_task_1/routing/route_names.dart';
import 'package:flutter/material.dart';

import '../../../const/images_path.dart';

class AuthScaffold extends StatelessWidget {
  AuthScaffold({
    Key? key,
    this.isBackAppear = false,
    required this.top,
    required this.body,
  }) : super(key: key);
  final double top;
  final Widget body;
  bool isBackAppear;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(kAuthBack), fit: BoxFit.fill),
          ),
        ),
        isBackAppear
            ? Positioned(
                top: top / 2.2,
                left: MediaQuery.of(context).size.width / 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                    ),
                  ),
                ),
              )
            : Container(),
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
