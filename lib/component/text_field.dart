import 'package:flutter/material.dart';
import 'package:loginpage_gojek/utils/colors.dart';

class MyTextfield extends StatelessWidget {
  final String txtHint;
  final bool txtObsure;

  const MyTextfield({
    super.key,
    required this.txtHint,
    required this.txtObsure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: TextField(
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: AppColor.fontAddNumber,
        ),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(
          ),
          hintText: txtHint,
        ),
        obscureText: txtObsure,
      ),
    );
  }
}
