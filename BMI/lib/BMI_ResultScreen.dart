import 'package:flutter/material.dart';

class BMI_ResultScreen extends StatelessWidget {
  final double result;
  const BMI_ResultScreen({required this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('BMI',
                      style: TextStyle(
                        fontSize: 40.0,
                        // fontWeight: FontWeight.w600,
                      )),
                  Text('$result',
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.w100,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
