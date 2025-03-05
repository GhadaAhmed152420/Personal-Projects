import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({Key? key, required this.number}) : super(key: key);

  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
