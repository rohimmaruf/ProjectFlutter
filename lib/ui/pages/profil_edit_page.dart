import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';
import 'package:payment/ui/widgets/forms.dart';

class ProfilEditPage extends StatelessWidget {
  const ProfilEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // menghilangkan garis bawah yang hitam

        title: const Text(
          'Edit Profil',
        ),
        backgroundColor: lightbacgroundColor,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 22,
              left: 22,
            ),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: 'Username',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Full Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),

                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                // Awalanya widgtex & di conver ke warp centerr lalu ganti jadi align jadi otomatis ganti type text

                const SizedBox(
                  height: 30,
                ),
                // Ambnil dari hamamna sigin agar lebih mudah & cepat
                CustomFilledButton(
                  tittle: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-set-profile');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
