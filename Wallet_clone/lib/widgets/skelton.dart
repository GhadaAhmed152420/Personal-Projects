import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Skelton extends StatelessWidget {
  const Skelton({Key? key, this.width, this.height}) : super(key: key);

  final double? width , height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(8.0),
        color: HexColor('E9E9E8'),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(16.0),
        //   color: HexColor('E9E9E8'),
        // ),
      ),
    );
  }
}