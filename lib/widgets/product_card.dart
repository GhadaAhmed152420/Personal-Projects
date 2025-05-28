import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildProductCard(
  String imagePath,
  String name,
  String price,
  String? oldPrice,
  bool hasOldPrice,
) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey.shade300, width: 1),
      boxShadow: [
        BoxShadow(color: Colors.grey[300]!, spreadRadius: 1, blurRadius: 4),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 87,
            height: 87,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.grey.shade400, blurRadius: 4),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(imagePath, width: 57, height: 59),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Titillium Web',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              if (hasOldPrice)
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: price,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const TextSpan(text: "   "),
                      TextSpan(
                        text: oldPrice,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.grey[400],
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFBF2D21),
                  ),
                ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFDF958F),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "Up to 10% Off",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            width: 55,
            height: 50.35,
          ),
        ),
      ],
    ),
  );
}
