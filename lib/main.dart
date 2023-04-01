import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/pages/home_page.dart';
import 'package:payment/ui/pages/onboarding_page.dart';
import 'package:payment/ui/pages/pin_page.dart';
import 'package:payment/ui/pages/profil_edit_page.dart';
import 'package:payment/ui/pages/profil_page.dart';
import 'package:payment/ui/pages/sign_in_page.dart';
import 'package:payment/ui/pages/sign_up_page.dart';
import 'package:payment/ui/pages/sign_up_set_ktp_profil.dart';
import 'package:payment/ui/pages/sign_up_set_profil.dart';
import 'package:payment/ui/pages/sign_up_success_profil.dart';
import 'package:payment/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Untuk menghilangkan Menu Debug
      debugShowCheckedModeBanner: false,
      // menggunakan ini agar semua langusng mengikuti setingan dari sini
      theme: ThemeData(
        // agar semua scaffold General
        scaffoldBackgroundColor: lightbacgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0,
          // Untuk membuat judul di Tengah
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          titleTextStyle: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      // Menuju ke halaman spalshPage
      // home: SplashPage(),
      //Ini menggunakan route agar lebih mudah dan singkat men igisial si pagenya
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilPage(),
        '/sign-up-set-ktp-prrofil': (context) => const SignUpSetKtpProfilPage(),
        '/sign-up-success-prrofil': (context) =>
            const SignUpSuccessProfillPage(),
        '/home': (context) => const HomePage(),
        '/profil': (context) => const profilPage(),
        '/pin': (context) => const PinPage(),
        '/profil-edit': (context) => const ProfilEditPage(),
      },
    );
  }
}
