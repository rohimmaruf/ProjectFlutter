import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:payment/shared/theme.dart';
import 'package:payment/ui/widgets/buttons.dart';
import 'package:payment/ui/widgets/profil_menu_item.dart';

class profilPage extends StatelessWidget {
  const profilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Membuat apbar
      appBar: AppBar(
        // menghilangkan garis bawah yang hitam

        title: const Text(
          'My Profil',
        ),
        backgroundColor: lightbacgroundColor,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profil.png'),
                    ),
                  ),
                  // Untuk membuat si ijo verivide
                  child: Container(
                    child: Align(
                      // Untuk membua si ijo kana atas kir
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Center(
                          child: Icon(
                            // Membuat icon ijo
                            Icons.check_circle,
                            color: greenColor,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_edit_profil.png',
                  title: 'Edit Profil',
                  // jadi jika pin dia benar maka dia akan bis pergi ke halaman plrofil edit
                  //  async & await untuk menghilangkan garis garis biru pada codingan
                  onTap: () async {
                    // if (await Navigator.pushNamed(context, '/pin') == true) {
                    Navigator.pushNamed(context, '/profil-edit');
                    // }
                    ;
                  },
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My PIN',
                  onTap: () {
                    Navigator.pushNamed(context, '/pin');
                  },
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_my wallet.png',
                  title: 'Wallet Settings',
                  onTap: () {},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_my_reward.png',
                  title: 'My Reward',
                  onTap: () {},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_statistic.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                ProfilMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log  Out',
                  onTap: () {},
                ),
                const SizedBox(
                  height: 38,
                ),
                const CustomTextButton(tittle: 'Report a Problem')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
