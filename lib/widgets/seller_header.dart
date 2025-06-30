import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/widgets/dot.dart';

Widget buildSellerHeader({required int index}) {
  final status = index == 0 ? 'Close' : 'Open';
  final color = status == 'Open' ? Colors.green : Colors.red;

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4), // X, Y direction
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 41,
              backgroundImage: AssetImage('assets/images/seller_pic.png'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Seller name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Titillium Web",
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/icons/verified.svg',
                        width: 21.36,
                        height: 23.33,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Delivery : 40 to 60 Min',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      dot(),
                      const SizedBox(width: 4),
                      Text(
                        status,
                        style: TextStyle(color: color, fontSize: 12),
                      ),
                      const SizedBox(width: 4),
                      dot(),
                      const SizedBox(width: 6),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
