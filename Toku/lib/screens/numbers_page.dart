import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({
    Key? key,
  }) : super(key: key);

  final Number one = const Number(
      image: "assets/images/numbers/number_one.png",
      jpName: 'Ichi',
      enName: 'One');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 77, 50, 40),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: 80,
        color: Colors.orange,
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset(one.image),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    one.jpName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    one.enName,
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
      ),
    );
  }
}

