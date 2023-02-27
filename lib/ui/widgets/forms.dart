import 'package:flutter/material.dart';
import 'package:payment/shared/theme.dart';

class CustomFormField extends StatelessWidget {
  // Untuk tittle
  final String title;
  // untuk tulisan seperti password
  final bool obscureText;
  // Untuk mengaturr arah value si colom
  final TextEditingController? controller;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // Untuk memmulai tulisan dari kiri
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            // Untuk mengatur padding seluruhnya
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
