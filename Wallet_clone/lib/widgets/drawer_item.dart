import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.color,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Color color;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Icon(
              icon,
              size: 20,
              color: color,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
