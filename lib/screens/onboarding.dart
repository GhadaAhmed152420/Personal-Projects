import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> pages = [
    {
      'image': 'assets/images/onboarding.png',
      'title': 'E Shopping',
      'desc': 'Explore op organic fruits & grab them',
    },
    {
      'image': 'assets/images/onboarding.png',
      'title': 'Delivery Arrived',
      'desc': 'Order is arrived at your Place',
    },
    {
      'image': 'assets/images/onboarding.png',
      'title': 'Delivery Arrived',
      'desc': 'Order is arrived at your Place',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() => currentIndex = index);
              },
              itemBuilder: (_, index) {
                final page = pages[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/welcome');
                          },
                          child: TextButton(
                            child: Image.asset(
                              "assets/images/skip.png",
                              width: 31,
                              height: 33,
                            ),
                            onPressed:
                                () => Navigator.pushReplacementNamed(context, '/welcome'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(page['image']!, width: 285, height: 273),
                      const SizedBox(height: 40),
                      Text(
                        page['title']!,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        page['desc']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.secondary,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: currentIndex == index ? 10 : 8,
                            height: currentIndex == index ? 10 : 8,
                            decoration: BoxDecoration(
                              color:
                                  currentIndex == index
                                      ? AppColors.primary
                                      : AppColors.secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (currentIndex == pages.length - 1) {
                              Navigator.pushReplacementNamed(context, '/welcome');
                            } else {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Text(
                            currentIndex == pages.length - 1
                                ? "Get Started"
                                : "Next",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
