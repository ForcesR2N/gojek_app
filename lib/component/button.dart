import 'package:flutter/material.dart';
import 'package:loginpage_gojek/utils/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final double width;
  final double height;
  final Color bgButton;
  final Color txtColor;
  final Color outlineColor;

  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.width = 400.0,
    this.height = 50.0,
    this.bgButton = AppColor.buttonGreen,
    this.txtColor = Colors.white,
    this.outlineColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: outlineColor, width: 1.3),
            foregroundColor: txtColor,
            backgroundColor: bgButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 1,
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ));
  }
}
