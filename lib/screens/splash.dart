import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF003602), // Set the background color to match the top 1/4
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.25,
            child: Container(
              color: Color(0xFF003602), // Top 1/4 of the screen
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png', // Your logo asset
              height: screenHeight * 0.25,
              fit: BoxFit.contain,
            ),
          ),
          // Vegetables Image at the bottom
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/fruits.png', // Your vegetables image asset
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
