import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/pages/sign_in_page.dart';
import 'package:payment/ui/widgets/buttons.dart';

// Ubah jadi statefull widget
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // Membuat index yang dimulai dari 0
  int currentIndex = 0;
  // Untuk membuat jika di klikmaka ikutan next
  CarouselController carouselController = CarouselController();
  // Membuat array
  // Untuk membuat tittles dimasing masing halaman
  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // Membuat gambar menjadi ditengah
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Untuk membuat slide kanan & kiri
            CarouselSlider(
              // Isi dari si Slide tersebut
              items: [
                // Memanggil Gambar
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                // agar tinggi gambar sesuai dengan desind
                height: 250,
                // Yang keliatan di layar hanya satu gambar
                viewportFraction: 1,
                // Agar slide ada limitnya
                enableInfiniteScroll: false,
                // Jadi ketika dia berubah maka nomor index akan masuk ke si current index
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              // ditambah setelah dari atas
              carouselController: carouselController,
            ),
            // jarak anatara gambar & text
            const SizedBox(
              height: 80,
            ),
            // membuat kotaknay
            Container(
              // ini Marjin antara kotak denagan lebar hp
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              // Padiing di dalam box
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 23,
              ),
              // Untuk membuat Boxnya
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              // Membuat isi dakam text
              child: Column(children: [
                // Text Pertama
                Text(
                  // Ambil data dari array di atas
                  titles[currentIndex],
                  // style dari Text tersebut
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semibold,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Jarak antara tulisan
                const SizedBox(
                  height: 26,
                ),
                // Text ke dua
                Text(
                  // Ambil dari array di atas
                  subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Jarak tulisan ke 3
                SizedBox(
                  // Jika current index == 2 maka tinngi menjadi 38
                  height: currentIndex == 2 ? 38 : 50,
                ),
                // Jika si index 2 maka Row akan Jadi colloum
                currentIndex == 2
                    ? Column(
                        children: [
                          // Diganti dengan widgets
                          CustomFilledButton(
                            tittle: 'Get Started',
                            onPressed: () {
                              Navigator.pushNamed(context, '/sign-up');
                            },
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            // Agar di selebar container
                            width: double.infinity,
                            height: 50,
                            child: TextButton(
                              // MembUast text button
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              // Saat di klik menuju ke halaman signInPage
                              onPressed: () {
                                // ambil inisial dari router agar mempermudah penulisan
                                Navigator.pushNamed(context, '/sign-in');
                              },
                              child: Text(
                                'Sign In ',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: regular,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          // gambar 1
                          Container(
                            // lebar dan panjang si Lingkaran
                            width: 12,
                            height: 12,
                            // Margin antara lingkaran kanan
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  // Jika Indexnya 0 maka dia blue collor
                                  currentIndex == 0
                                      ? blueColor
                                      : lightbacgroundColor,
                            ),
                          ),
                          // Gambar 2
                          Container(
                            // lebar dan panjang si Lingkaran
                            width: 12,
                            height: 12,
                            // Margin antara lingkaran kanan
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  // Jika Indexnya 1 maka dia blue collor
                                  currentIndex == 1
                                      ? blueColor
                                      : lightbacgroundColor,
                            ),
                          ),
                          // gambar 3
                          Container(
                            // lebar dan panjang si Lingkaran
                            width: 12,
                            height: 12,
                            // Margin antara lingkaran kanan
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  // Jika Indexnya 2 maka dia blue collor
                                  currentIndex == 2
                                      ? blueColor
                                      : lightbacgroundColor,
                            ),
                          ),
                          // Untuk mengisi Ruang Kosong
                          const Spacer(),
                          // Container milik si Text button
                          SizedBox(
                            width: 150,
                            height: 50,
                            child: TextButton(
                              // MembUast text button
                              style: TextButton.styleFrom(
                                backgroundColor: purplrColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(56),
                                ),
                              ),
                              onPressed: () {
                                carouselController.nextPage();
                              },
                              child: Text(
                                'Continue',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: semibold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
