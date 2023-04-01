import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTipsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String url;
  const HomeTipsItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () async {
      //   if (await canLaunch(url)) {
      //     launchUrl(url);
      //   }
      // },
      child: Container(
        width: 155,
        height: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 155,
              height: 110,
              // cara membuat Agar document
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
                //  Maksimal 2 baris untuk membuat 2
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
