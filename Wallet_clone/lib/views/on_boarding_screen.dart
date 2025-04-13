import 'package:flutter/material.dart';
import 'package:wallet/views/register_screen.dart';
import 'package:wallet/widgets/build_boarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../models/boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/onBoard1.jpg',
      title: 'Your Finances in One Place',
      body: 'Get the big picture on all your money. '
          'Connect your bank,track cash, or import data.',
    ),
    BoardingModel(
      image: 'assets/images/onBoard2.jpg',
      title: 'Connect your Bank',
      body: 'Connect all your accounts from any bank. '
          'Add savings, credit cards, PayPal and more.',
    ),
    BoardingModel(
      image: 'assets/images/onBoard3.jpg',
      title: 'Track your Spending',
      body: 'Track and analyse spending immediately and automatically through our bank connection.',
    ),
    BoardingModel(
      image: 'assets/images/onBoard4.jpg',
      title: 'Set up your Goals',
      body: 'Track and follow what matters to you. '
          'Save for important things.',
    ),
    BoardingModel(
      image: 'assets/images/onBoard5.jpg',
      title: 'Budget your money',
      body: 'Build healthy financial habits. '
          'Control unnecessary expenses.',
    ),
    BoardingModel(
      image: 'assets/images/onBoard6.jpg',
      title: 'Follow your plan and dreams',
      body: 'Build your financial life. '
          'Make the right financial decisions. '
          'See only what is important for you.',
    ),
  ];

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            SmoothPageIndicator(
                controller: boardController,
                effect: ScrollingDotsEffect(
                  activeDotColor: Colors.blue.shade700,
                  dotColor: Colors.grey.shade400,
                  activeDotScale: 1.8,
                  maxVisibleDots: 7,
                  spacing: 10,
                  dotWidth: 9,
                  dotHeight: 9,
                ),
                count: boarding.length),
            const SizedBox(
              height: 40.0,
            ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal:50.0
                  ),
                  side: BorderSide(color: Colors.blue.shade700, width: 1.5,),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const RegisterScreen()), (route) => false);
                },
                child: Text(
                  'ابدأ الان',
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
