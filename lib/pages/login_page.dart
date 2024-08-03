import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/button.dart';
import 'package:loginpage_gojek/utils/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.center,
                spacing: 4.0,
                runSpacing: 4.0,
                children: [
                  Text(
                    "Dengan masuk atau mendaftar, Kamu menyetujui ",
                  ),
                  Text(
                    "Ketentuan",
                    style: TextStyle(
                      color: AppColor.buttonGreen,
                    ),
                  ),
                   Text(
                    "layanan",
                    style: TextStyle(
                      color: AppColor.buttonGreen,
                    ),
                  ),
                  
                  Text(
                    " dan ",
                  ),
                  Text(
                    "Kebijakan privasi",
                    style: TextStyle(
                      color: AppColor.buttonGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
