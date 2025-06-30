import 'package:flutter/material.dart';

Map<String, dynamic> categories = {
  'Fruits': Image.asset('assets/images/fruit.png'),
  'Vegetables': Image.asset('assets/images/vegetables.png'),
  'Electronics': Image.asset('assets/images/phone.png'),
  'Pets': Image.asset('assets/images/pets.png'),
};

Widget buildCategories() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Container(
                  width: 78.78,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: categories.values.elementAt(index),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  categories.keys.elementAt(index),
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
