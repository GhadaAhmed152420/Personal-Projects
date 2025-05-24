import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedCountryCode = 'KW';
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Fruit Market',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Sign Up to Wikala',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Full Name ',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                            children: [
                              TextSpan(
                                text: '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'First and Last Name',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Arial',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Phone Number with Whatsapp ',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                            children: [
                              TextSpan(
                                text: '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                value: selectedCountryCode,
                                underline: const SizedBox(),
                                items:
                                    ['KW', 'EG', 'SA'].map((String code) {
                                      return DropdownMenuItem<String>(
                                        value: code,
                                        child: Text(code),
                                      );
                                    }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedCountryCode = value!;
                                  });
                                },
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  controller: phoneController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Mobile Number',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Arial',
                                    ),
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'Password ',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                            children: [
                              TextSpan(
                                text: '*',
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Arial',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: AppColors.primary,
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF004D8E),
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
