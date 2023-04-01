import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';

class SignUpSuccessProfillPage extends StatelessWidget {
  const SignUpSuccessProfillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Buatlah warna dari si Backgoundnya
      // 2. Buat widget body di bungkus Center Agar dia di tengah
      body: Center(
        // 3. Baru  kita bikin Colom
        child: Column(
          // 4. Agar tulisan Ke tengah ( Center dengan HP, agar si colum ketengah )
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 5. Bikin Text Yang pertama
            Text(
              'Akun Berhasil\nTedaftar',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              // 6. Agar Tulusan central seperti paragraph
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 26,
            ),
            // 7. Bikin Text yang ke dua sama seperti yang di atas
            Text(
              'Grow your finance start\ntogether with us',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            // 8. Bikin panngil fari widget button
            CustomFilledButton(
              // 9. bikin agar si button menjadi kecil tidak selebar aplikasi
              width: 183,
              tittle: 'Get Started',
              onPressed: () {
                //9. Kegunaan Untuk Agar tidak back kehalaman  selanjutnya
                // Navigator.pushAndRemoveUntil(context, '/home' , (route) => false),
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
