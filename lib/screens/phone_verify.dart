import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';

class PhoneVerifyScreen extends StatefulWidget {
  const PhoneVerifyScreen({super.key});

  @override
  State<PhoneVerifyScreen> createState() => _PhoneVerifyScreenState();
}

class _PhoneVerifyScreenState extends State<PhoneVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedCountryCode = 'KW';
    final TextEditingController phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
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
              'Enter your Number',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Phone Number ',
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
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/otp');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: AppColors.primary,
              ),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Arial',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
