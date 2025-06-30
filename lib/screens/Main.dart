import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/screens/basket.dart';
import 'package:fruit_market/screens/delivery_address.dart';
import 'package:fruit_market/screens/delivery_time.dart';
import 'package:fruit_market/screens/home.dart';
import 'package:fruit_market/screens/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    BasketScreen(),
    DeliveryAddressScreen(),
    DeliveryTimeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primary,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 27,
              height: 27,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/list.svg',
              width: 27,
              height: 27,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              width: 27,
              height: 27,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/favourite.svg',
              width: 27,
              height: 27,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/more.svg',
              width: 27,
              height: 27,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
