import 'package:flutter/material.dart';
import 'package:loginpage_gojek/utils/colors.dart';

class MyTextfield extends StatelessWidget {
  final String txtHint;
  final bool txtObsure;
  final bool keyboardType;
  final TextEditingController controller;

  const MyTextfield({
    super.key,
    required this.txtHint,
    required this.txtObsure,
    required this.keyboardType,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: AppColor.fontAddNumber,
        ),
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          hintText: txtHint,
        ),
        obscureText: txtObsure,
      ),
    );
  }
}
