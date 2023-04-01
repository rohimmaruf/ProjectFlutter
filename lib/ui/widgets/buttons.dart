import 'dart:ffi';
// Membuat reusable widgets

import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';

// Button yang sudah ada isinya warna nya
class CustomFilledButton extends StatelessWidget {
  // Mebuat state untuk mengubah isi si button
  // Ini untuk Judul dari button
  final String tittle;
  // Untuk tinngi button
  final double height;
  // Untuk Lebar si button
  final double width;
  // Untuk Halaman yang dituju
  final VoidCallback? onPressed;

// Isinya kondiso kondisi
  const CustomFilledButton({
    Key? key,
    // Wajib meningisi tittle
    required this.tittle,
    // Untuk Kondisi si lebah  button
    this.width = double.infinity,
    // Untuk kondisi tinggi si BUtton
    this.height = 50,
    //  Untuk link dati si button
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Agar di selebar container
      width: width,
      height: height,
      child: TextButton(
        // MembUast text button
        style: TextButton.styleFrom(
          backgroundColor: purplrColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          tittle,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      ),
    );
  }
}

// Membuat button jyang gak keliatan

class CustomTextButton extends StatelessWidget {
  final String tittle;
  final double height;
  final double width;
  final VoidCallback? onPressed;

  const CustomTextButton({
    Key? key,
    required this.tittle,
    this.width = double.infinity,
    this.height = 24,
    this.onPressed,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Agar di selebar container
      width: width,
      height: height,
      child: TextButton(
        // MembUast text button
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        // Saat di klik menuju ke halaman signInPage
        onPressed: onPressed,
        child: Text(
          tittle,
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),
        ),
      ),
    );
  }
}

class CustomInputbuttom extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CustomInputbuttom({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: numberBackgroundColor,
        ),
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 22,
              fontWeight: semibold,
            ),
          ),
        ),
      ),
    );
  }
}
