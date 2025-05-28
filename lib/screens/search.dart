import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:fruit_market/widgets/bottom_nav.dart';
import 'package:fruit_market/widgets/filter_pop_up.dart';
import 'package:fruit_market/widgets/seller_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title: const Text(
          'Fruit Market',
          style: TextStyle(
            color: AppColors.primary,
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              filterPopUp(context, setState);
            },
            icon: SvgPicture.asset(
              'assets/icons/tune.svg',
              width: 26,
              height: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "What are you looking for?",
                hintStyle: TextStyle(color: AppColors.secondary, fontSize: 14),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Icon(Icons.search, color: AppColors.secondary),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.secondary, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.secondary, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: AppColors.secondary, width: 1),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Top Sellers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('Show all', style: TextStyle(color: AppColors.accent)),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 3,
              itemBuilder:
                  (context, index) => sellerCard(
                    index: index,
                    onTap:
                        () => Navigator.pushNamed(
                          context,
                          '/seller-profile',
                          arguments: index,
                        ),
                  ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNav(currentIndex, setState),
    );
  }
}
