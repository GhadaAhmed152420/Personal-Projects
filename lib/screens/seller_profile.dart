import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/widgets/bottom_nav.dart';
import 'package:fruit_market/widgets/categories.dart';
import 'package:fruit_market/widgets/product_card.dart';
import 'package:fruit_market/widgets/seller_header.dart';

class SellerProfileScreen extends StatefulWidget {
  const SellerProfileScreen({super.key});

  @override
  State<SellerProfileScreen> createState() => _SellerProfileScreenState();
}

class _SellerProfileScreenState extends State<SellerProfileScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Fruit Market',
          style: TextStyle(
            color: AppColors.primary,
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/search_icon.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          buildSellerHeader(index: 1),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Titillium Web",
                fontSize: 18,
              ),
            ),
          ),
          buildCategories(),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Products",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Titillium Web",
                fontSize: 18,
              ),
            ),
          ),
          buildProductCard(
            context,
            'assets/images/vegetables.png',
            "Product name",
            "12.00 KD",
            "14.00 KD",
            true,
            
          ),
          buildProductCard(
            context,
            'assets/images/vegetables.png',
            "Product name",
            "Price Upon Selection",
            "",
            false,
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNav(currentIndex, setState),
    );
  }
}
