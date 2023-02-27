import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Isi bacground color dari si menu
      backgroundColor: lightbacgroundColor,
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
          buildProfil(),
        ],
      ),
    );
  }

  // mambuat widget terlebih dahulu untuk membuat masing masing bagian
  Widget buildProfil() {
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
          Container(
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
        ],
      ),
    );
  }
}
