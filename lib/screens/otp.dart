import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  int secondsRemaining = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
        startTimer();
      }
    });
  }

  void verifyOtp() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isVerified', true);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Fruit Market',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                  fontFamily: 'Poppins'
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Enter Received OTP',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4 * 2 - 1, (i) {
                  if (i.isOdd) {
                    return const SizedBox(width: 24);
                  }

                  int index = i ~/ 2;
                  return SizedBox(
                    width: 48,
                    height: 48,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        TextField(
                          controller: otpControllers[index],
                          focusNode: focusNodes[index],
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.secondary,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: const BorderSide(
                                color: AppColors.secondary,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: const BorderSide(
                                color: AppColors.secondary,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: const BorderSide(
                                color: AppColors.primary,
                                width: 2,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {});
                            if (value.isNotEmpty) {
                              if (index < 3) {
                                FocusScope.of(
                                  context,
                                ).requestFocus(focusNodes[index + 1]);
                              } else {
                                FocusScope.of(context).unfocus();
                              }
                            } else {
                              if (index > 0) {
                                FocusScope.of(
                                  context,
                                ).requestFocus(focusNodes[index - 1]);
                              }
                            }
                          },
                        ),
                        if (otpControllers[index].text.isEmpty)
                          const Positioned(
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: AppColors.secondary,
                            ),
                          ),
                      ],
                    ),
                  );
                }),
              ),

              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: verifyOtp,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: AppColors.primary,
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                '$secondsRemaining',
                style: TextStyle(fontSize: 24, color: AppColors.secondary),
              ),
              TextButton(
                onPressed: () {
                  // resend logic if needed
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Not received?',
                    style: TextStyle(color: AppColors.secondary, fontSize: 18),
                    children: [
                      TextSpan(
                        text: ' Send Again',
                        style: TextStyle(color: Color(0xFF004D8E)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
