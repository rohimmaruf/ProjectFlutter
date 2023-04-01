import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';

class HomeServiceItem extends StatelessWidget {
  final String iconUrl;
  final String tittle;
  final VoidCallback? onTap;

  const HomeServiceItem({
    Key? key,
    required this.iconUrl,
    required this.tittle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 8,
          ),
          width: 70,
          height: 70,
          // color: whiteColor,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          tittle,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
            //  Untuk membuat ...
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
