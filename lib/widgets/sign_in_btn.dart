import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';

Widget signInButtonWidget(IconData? icon, String text, {Color color = Colors.black}) {
  return ElevatedButton.icon(
    icon: icon == null
  ? Image.asset(
      'assets/images/google.png',
      width: 24,
      height: 24,
    )
  : Icon(
      icon,
      size: 24,
      color: color == Colors.black ? Colors.black : Colors.white,
    ),
    label: Text(
      text,
      style: TextStyle(
        color: color == Colors.black ? Colors.black : Colors.white,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: color == Colors.black ? Colors.white : color,
      minimumSize: const Size.fromHeight(50),
      side: const BorderSide(color: AppColors.secondary),
    ),
    onPressed: () {},
  );
}
