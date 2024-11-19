import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/my_button.dart';
import '../widget/my_image.dart';
import '../widget/my_text.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Warna latar belakang hitam
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyImage(
                    imageName: 'assets/images/azazel.jpg',
                    width: 120,
                    height: 120,
                    borderRadius: 10,
                    margin: const EdgeInsets.only(top: 20),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        hintText: 'Yusuf',
                        fontSize: 26,
                        colors: Colors.white, // Warna teks putih
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          MyButton(
                            textButton: 'Edit profile',
                            backgroundColor: Colors.teal,
                            textColor: Colors.white,
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(20),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            margin: const EdgeInsets.only(right: 3),
                          ),
                          const SizedBox(width: 10),
                          MyButton(
                            textButton: 'Albums',
                            backgroundColor: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {},
                            borderRadius: BorderRadius.circular(20),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            margin: const EdgeInsets.only(right: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    hintText: 'Pilihan fitur',
                    fontSize: 14,
                    colors: Colors.white, // Warna teks putih
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.mail_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.help_outline,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    hintText: 'Pesan kamu',
                    fontSize: 14,
                    colors: Colors.white, // Warna teks putih
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.album,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 25),
                    child: MyText(
                      hintText: 'Chat Bot',
                      fontSize: 14,
                      colors: Colors.white, // Warna teks putih
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: MyButton(
                margin: const EdgeInsets.only(top: 200),
                textButton: 'Logout',
                backgroundColor: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Get.toNamed('/login');
                },
                borderRadius: BorderRadius.circular(20),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
