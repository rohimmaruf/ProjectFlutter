import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';

class HomeUserItem extends StatelessWidget {
  final String imageUrl;
  final String username;
  const HomeUserItem({
    Key? key,
    required this.imageUrl,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // membuat si container belakang
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Untuk Image Profilnya
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(
              bottom: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                // Agar gambar penuh dengan sensuai cover
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          Text(
            '@$username',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
