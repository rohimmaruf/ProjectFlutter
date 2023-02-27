import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // Untuk membuat perpindahan halaman
  @override
  void initState() {
    super.initState();
    // Untuk menambah berapa lama dan kemana halaman tersebut berpindah
    // Menggunakan router agar mmepersingkat penulisan halaman agar codinagan tidak telalu panjang
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkbacgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/img_logo_dark.png',
            ),
          )),
        ),
      ),
    );
  }
}
