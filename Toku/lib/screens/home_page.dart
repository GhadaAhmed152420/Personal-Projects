import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 77, 50, 40),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NumbersPage()));
            },
          ),
           Category(text: 'Family Members', color: Colors.green, onTap: () {
              print("Family members");
            },),
           Category(text: 'Colors', color: Colors.purple, onTap: () {
              print("colors");
            },),
           Category(text: 'Phrases', color: Colors.blueAccent, onTap: () {
              print("phrases");
            },),
        ],
      ),
    );
  }
}
