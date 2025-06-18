import 'package:flutter/material.dart';
import 'package:fruit_market/screens/main.dart';
import 'package:fruit_market/screens/onboarding.dart';
import 'package:fruit_market/screens/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateAfterDelay();
  }

  Future<void> _navigateAfterDelay() async {
    await Future.delayed(const Duration(seconds: 3));

    final prefs = await SharedPreferences.getInstance();
    final hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Widget nextScreen;

    if (!hasSeenOnboarding) {
      nextScreen = const OnboardingScreen();
    } else if (!isLoggedIn) {
      nextScreen = const WelcomeScreen();
    } else {
      nextScreen = const MainScreen();
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => nextScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF003602),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.25,
            child: Container(color: const Color(0xFF003602)),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: screenHeight * 0.25,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/fruits.png',
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
