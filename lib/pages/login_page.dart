import 'package:flutter/material.dart';
import 'package:loginpage_gojek/component/button.dart';
import 'package:loginpage_gojek/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  final List<Map<String, String>> imgList = [
    {
      'path': 'assets/gojek_image_1.png',
      'header': 'Selamat datang di Gojek!',
      'text': 'Aplikasi yang buat hidupmu lebih nyaman. Siap bantu kebutuhanmu, kapan pun. Dimana pun'
    },
    {
      'path': 'assets/gojek_image_2.png',
      'header': 'Transportasi & logistic',
      'text': 'Aplikasi yang buat hidupmu lebih nyaman. Siap bantu kebutuhanmu, kapan pun. Dimana pun'
    },
    {
      'path': 'assets/gojek_image_3.png',
      'header': 'Beli makanan & belanja',
      'text': 'Aplikasi yang buat hidupmu lebih nyaman. Siap bantu kebutuhanmu, kapan pun. Dimana pun'
    },
    {
      'path': 'assets/gojek_image_4.png',
      'header': 'Pembayaran',
      'text': 'Aplikasi yang buat hidupmu lebih nyaman. Siap bantu kebutuhanmu, kapan pun. Dimana pun'
    },
  ];

  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 350.0,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    initialPage: _current,
                    enableInfiniteScroll: false,
                  ),
                  items: imgList.map((item) {
                    return Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            item['path']!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            item['header']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          margin: EdgeInsets.only(bottom: 50),
                          child: Text(
                            textAlign: TextAlign.center,
                            item['text']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : AppColor.buttonGreen)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Column(
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
        ],
      ),
    );
  }
}
