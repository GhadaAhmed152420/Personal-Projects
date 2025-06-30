import 'package:flutter/material.dart';

Widget dot() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Align(
      child: Container(
        width: 5,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          shape: BoxShape.circle,
        ),
      ),
    ),
  );
}
