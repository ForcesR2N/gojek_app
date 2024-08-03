import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/text_field.dart';
import 'package:loginpage_gojek/component/button.dart';
import 'package:loginpage_gojek/utils/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              text: 'Masuk',
              onTap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            MyButton(
              text: 'Belum ada akun?, Daftar dulu',
              onTap: () {},
              bgButton: Colors.white,
              txtColor: AppColor.buttonGreen,
              outlineColor: AppColor.buttonGreen,
            ),
          ],
        ),
      ),
    );
  }
}
