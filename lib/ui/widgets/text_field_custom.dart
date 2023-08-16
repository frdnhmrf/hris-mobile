// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:diamond_hris/shared/shared_values.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final bool obsecureText;
  const TextFieldCustom({
    Key? key,
    required this.label,
     this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: greyTextStyle),
        const SizedBox(height: 11),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
            focusColor: primaryColor,
            hoverColor: blackColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
