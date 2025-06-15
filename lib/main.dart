import 'package:flutter/material.dart';
import 'package:fruit_market/screens/home.dart';
import 'package:fruit_market/screens/login.dart';
import 'package:fruit_market/screens/onboarding.dart';
import 'package:fruit_market/screens/otp.dart';
import 'package:fruit_market/screens/phone_verify.dart';
import 'package:fruit_market/screens/product%20_details.dart';
import 'package:fruit_market/screens/search.dart';
import 'package:fruit_market/screens/seller_profile.dart';
import 'package:fruit_market/screens/sign_up.dart';
import 'package:fruit_market/screens/splash.dart';
import 'package:fruit_market/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Titillium Web',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Color(0xFF000000)),
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFF000000)),
          bodySmall: TextStyle(fontSize: 14, color: Color(0xFF000000)),
        ),
        primaryColor: const Color(0xFF204F38),
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFE4E4E4),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/signup': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/phone-verify': (context) => PhoneVerifyScreen(),
        '/otp': (context) => OtpScreen(),
        '/home': (context) => HomeScreen(),
        '/search': (context) => SearchScreen(),
        '/seller-profile': (context) => SellerProfileScreen(),
        '/product_details': (context) => ProductDetailsScreen(),
      },
    );
  }
}
