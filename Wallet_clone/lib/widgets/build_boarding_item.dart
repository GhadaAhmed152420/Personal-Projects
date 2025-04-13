import 'package:flutter/material.dart';
import 'package:wallet/models/boarding_model.dart';

Widget buildBoardingItem(BoardingModel model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded(
          child: Image(
        image: AssetImage(model.image),
      )),
      const SizedBox(
        height: 50.0,
      ),
      Text(
        model.title,
        style: const TextStyle(
          fontFamily: 'Noto Sans Bold',
          fontSize: 24.0,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        model.body,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
        ),
      ),
      const SizedBox(
        height: 30.0,
      ),
    ],
  );
}
