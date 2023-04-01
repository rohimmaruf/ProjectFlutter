import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';

import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:payment/ui/widgets/home_latest_transaction_item.dart';
import 'package:payment/ui/widgets/home_services_item.dart';
import 'package:payment/ui/widgets/home_tips_item.dart';
import 'package:payment/ui/widgets/home_user_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Isi bacground color dari si menu
      // 2. Untuk membuat Navigasi  tombol bawah
      bottomNavigationBar: BottomAppBar(
        // 13. Mengconver bottom navigation menjadi center
        // 14. Membuat rna botom Bar
        color: whiteColor,
        // 15. Membuat jadi shapes Untuk si logo +
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        // 16. Membuat nprt marginnya
        notchMargin: 6,
        elevation: 0,

        child: BottomNavigationBar(
          // 17. membuat Agar tombol history tidak bergeser
          type: BottomNavigationBarType.fixed,
          // 18. Agar tidak ada Garis bawah pada bottom
          elevation: 0,
          backgroundColor: whiteColor,
          // 6. Untuk yang  dilih maka akan berwarna  bitu
          selectedItemColor: blueColor,
          // 7. Untuk yang tidak dipilih maka akan berwarna hitam
          unselectedItemColor: blackColor,
          // 8. Agar Tulisan Muncul
          showSelectedLabels: true,
          showUnselectedLabels: true,
          // 9. Mengubah style dari si Text
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            // 3. Isi dari si Bottom navigasi
            BottomNavigationBarItem(
              // 4. Untuk Mengimport gambar
              icon: Image.asset(
                'assets/ic_overview.png',
                // 4.1 Untuk mengatur ukuran dari besar icon
                width: 20,
                height: 20,
              ),
              // 5. Label untuk penamaan label bottom
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
                height: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
                height: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
                height: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      // 10. Membuat Tombol Tambah untuk Plus
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purplrColor,
        // 11. Membua child & image
        child: Image.asset(
          'assets/ic_circel_plus.png',
        ),
      ),
      // 12. Untuk Membuat Logo menjadi di tengah
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 1. Untuk MemBuat Bagian yang lainnya
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          // Harus dipanggil
          buildProfil(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLastestTransaction(),
          buildSendAgain(),
          buildFrienlyTips(),
        ],
      ),
    );
  }

// Ini harus di hapus jika ingin di tambah widget yang lainnya

//   // mambuat widget terlebih dahulu untuk membuat masing masing bagian
  Widget buildProfil(BuildContext context) {
    return Container(
      // Margin antara  container dengan atas
      margin: const EdgeInsets.only(
        top: 40,
      ),
      child: Row(
        // Membuat tulisan / jarak jadi kanan kiri
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // Untuk membuat text dari Kanan
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Shaynahan',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          // membuat On click
          GestureDetector(
            onTap: (() {
              Navigator.pushNamed(context, '/profil');
            }),
            child: Container(
              width: 60,
              height: 60,
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
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Center(
                      child: Icon(
                        // Membuat icon ijo
                        Icons.check_circle,
                        color: greenColor,
                        size: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(
        top: 32,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/img_bg_card.png',
          ),
        ),
      ),
      child: Column(
        // Membuat Text mulai darikiri terlebih dahulu
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
              // membuat spasi
              letterSpacing: 4,
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          Text(
            'Rp. 12.500',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      // Membuat sicolom countener
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level  1',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
              const Spacer(),
              Text(
                '55%',
                style: greenTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
              Text(
                ' of Rp. 20.000',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Membuat radius pada level progres
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            // Widget Bawaan flutter untuk membuat level
            child: LinearProgressIndicator(
              // Untuk progresnya
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightbacgroundColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Do Something',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ),
          Row(
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                tittle: 'Top Up',
                onTap: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                tittle: 'Send',
                onTap: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                tittle: 'Withdraw',
                onTap: () {},
              ),
              const SizedBox(
                width: 16,
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                tittle: 'More',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLastestTransaction() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 14,
            ),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat1.png',
                  title: 'Top Up',
                  date: 'Yedterday',
                  value: '+ 450.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat2.png',
                  title: 'Cashback',
                  date: 'Sep 11',
                  value: '+ 22.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  date: 'Sep 2',
                  value: '+ -15.000',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat4.png',
                  title: 'Transfer',
                  date: 'Aug 27',
                  value: '- 123.500',
                ),
                HomeLatestTransactionItem(
                  iconUrl: 'assets/ic_transaction_cat5.png',
                  title: 'Electric',
                  date: 'Feb 18',
                  value: '- 12.300.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          // Untuk membuat agar list ke kanan/ dalam horizon
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: 'assets/img_friend1.png',
                  username: 'yuanita',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend2.png',
                  username: 'Jani',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend3.png',
                  username: 'Yuannita',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend4.png',
                  username: 'Urip',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFrienlyTips() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
        bottom: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          // Untuk membuat Gambar menjadi 4 Bagian
          Wrap(
            // Cara membuat Batas kanan kiri
            spacing: 17,
            runSpacing: 18,
            children: const [
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.com'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: 'https://www.google.com'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Great hack to get better advices',
                  url: 'https://www.google.com'),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: 'https://www.google.com'),
            ],
          ),
        ],
      ),
    );
  }
}
