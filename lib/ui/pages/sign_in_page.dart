import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';
import 'package:payment/ui/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(
              top: 100,
              bottom: 80,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img_logo_light.png')),
            ),
          ),
          // Tulisan judul
          Text(
            'Sign In &\n Grow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE INPUT EMAIL
                // Column(
                //   // Untuk memmulai tulisan dari kiri
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Email Address',
                //       style: blackTextStyle.copyWith(
                //         fontSize: 14,
                //         fontWeight: medium,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 8,
                //     ),
                //     TextFormField(
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(14),
                //         ),
                //         // Untuk mengatur padding seluruhnya
                //         contentPadding: const EdgeInsets.all(12),
                //       ),
                //     ),
                //   ],
                // ),
                // Di gantikan dengan widgets
                const CustomFormField(
                  title: 'Email Addres',
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE : PASSWORD INPUT
                // Column(
                //   // Untuk memmulai tulisan dari kiri
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       'Password',
                //       style: blackTextStyle.copyWith(
                //         fontSize: 14,
                //         fontWeight: medium,
                //       ),
                //     ),
                //     const SizedBox(
                //       height: 8,
                //     ),
                //     TextFormField(
                //       // Membuat password jadi bintang bintangd
                //       obscureText: true,
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(14),
                //         ),
                //         // Untuk mengatur padding seluruhnya
                //         contentPadding: const EdgeInsets.all(12),
                //       ),
                //     ),
                //   ],
                // ),
                // Figanti dengan widget dari forms
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                // Awalanya widgtex & di conver ke warp centerr lalu ganti jadi align jadi otomatis ganti type text
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Ambnil dari hamamna sigin agar lebih mudah & cepat
                CustomFilledButton(
                  tittle: 'Sign In',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // Ambil dari On page
          // Ambil button dari widgets button
          CustomTextButton(
            tittle: 'Create New Account',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
        ],
      ),
    );
  }
}
