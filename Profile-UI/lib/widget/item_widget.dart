import 'package:flutter/material.dart';
import 'package:profile_ui/model/user_model.dart';

class ItemWidget extends StatelessWidget {

  final String title;
  final int count;

  const ItemWidget({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(count.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            )),
        const SizedBox(height: 4,),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
