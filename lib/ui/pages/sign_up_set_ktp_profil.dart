import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';
import 'package:payment/ui/widgets/forms.dart';

class SignUpSetKtpProfilPage extends StatelessWidget {
  const SignUpSetKtpProfilPage({Key? key}) : super(key: key);

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
              bottom: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img_logo_light.png')),
            ),
          ),
          Text(
            'Verify Your\nAccount ',
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
              children: [
                // Nanti di bikin kondisi
                // Container(
                //   height: 120,
                //   width: 120,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: lightbacgroundColor,
                //   ),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/ic_upload.png',
                //       height: 32,
                //       width: 32,
                //     ),
                //   ),
                // ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightbacgroundColor,
                    image: DecorationImage(
                      // Untuk mengikuti gambar sesuai dengan image
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img_profil.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Passport/ID Card ',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),

                // Ambnil dari hamamna sigin agar lebih mudah & cepat
                CustomFilledButton(
                  tittle: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-success-prrofil');
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 82,
          ),
          CustomTextButton(
            tittle: 'Skip For Now',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up-success-prrofil');
            },
          ),
        ],
      ),
    );
  }
}
