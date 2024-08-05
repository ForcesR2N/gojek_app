import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/button.dart';
import 'package:loginpage_gojek/utils/colors.dart';
import 'package:loginpage_gojek/component/text_field.dart';

class LoginOrRegister extends StatelessWidget {
  const LoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              'assets/change_language.png',
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Selamat datang di Gojek !',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Masuk atau daftar hanya dalam beberapa langkah mudah.',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, top: 30, bottom: 10),
              child: Text(
                "Nomor HP",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 75,
                    decoration: ShapeDecoration(
                      color: AppColor.bgNomorHp,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/indo_flag1.png',
                          height: 30,
                          width: 30,
                        ),
                        const Text(
                          '+62',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: MyTextfield(
                      keyboardType: true,
                      txtHint: '81x-xxx-xxx',
                      txtObsure: false,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    text: 'Lanjut',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 17),
              child: Row(
                children: [
                  Text(
                    'Saya menyetujui ',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Ketentuan Layanan ',
                    style: TextStyle(fontSize: 12, color: AppColor.buttonGreen),
                  ),
                  Text(
                    '& ',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Kebijakan Privasi ',
                    style: TextStyle(fontSize: 12, color: AppColor.buttonGreen),
                  ),
                  Text(
                    'Gojek',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black12, width: 1.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 1,
              ),
              child: Container(
                height: 35,
                width: 215,
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Ada kendala atau lupa nomor?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/login_use_number1.png',
                      height: 60,
                      width: 100,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
