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
        Text(
          title,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                gapPadding: 0,
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              border: OutlineInputBorder(
                  gapPadding: 0,
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5))),
              prefixIcon: prefixIcon,
              hintText: hintText),
        ),
      ],
    );
  }
}
