import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MyTextfield(
          txtHint: "Nomor HP",
          txtObsure: false,
        ),
      ),
    );
  }
}
