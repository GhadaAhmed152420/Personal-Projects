import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/widgets/sign_in_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Fruit Market',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Welcome to Our app',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              signInButtonWidget(Icons.phone, "Sign in with Phone Number"),
              const SizedBox(height: 10),
              signInButtonWidget(null, "Sign in with Google"),
              const SizedBox(height: 10),
              signInButtonWidget(
                Icons.facebook,
                "Sign in with Facebook",
                color: Color(0xFF235C95),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already member?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFF004D8E),
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'By continue you agree to our ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Terms of service',
                      style: TextStyle(color: Color(0xFF3C6EA1)),
                    ),
                    TextSpan(
                      text: ' and our ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Color(0xFF3C6EA1)),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
