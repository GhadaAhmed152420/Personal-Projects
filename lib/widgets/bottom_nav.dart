import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/screens/basket.dart';
import 'package:fruit_market/screens/home.dart';
import 'package:fruit_market/screens/login.dart';
import 'package:fruit_market/screens/otp.dart';
import 'package:fruit_market/screens/search.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    SearchScreen(),
    BasketScreen(),
    LoginScreen(),
    OtpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg', width: 27, height: 27),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/list.svg', width: 27, height: 27),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart.svg', width: 27, height: 27),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/favourite.svg', width: 27, height: 27),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/more.svg', width: 27, height: 27),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
