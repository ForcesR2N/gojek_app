import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/button.dart';
import 'package:loginpage_gojek/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/gojek_image_1.png',
      'assets/gojek_image_2.png',
      'assets/gojek_image_3.png',
    ];

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/Gojek_logo_2022.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: false,
                    enlargeCenterPage: true,
                  ),
                  
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(item,
                                  fit: BoxFit.cover, width: 1000),
                            ),
                          ))
                      .toList(),
                ),
                Expanded(
                  child: Center(
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
                          padding: EdgeInsets.all(16.0),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
