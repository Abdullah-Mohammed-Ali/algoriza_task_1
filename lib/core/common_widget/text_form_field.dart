import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  AppTextForm({
    Key? key,
    required this.title,
    this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  final String title;
  final String hintText;
  Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              prefixIcon: prefixIcon,
              hintText: hintText),
        ),
      ],
    );
  }
}
