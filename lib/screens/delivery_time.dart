import 'package:flutter/material.dart';
import 'package:fruit_market/screens/delivery_address.dart';

class DeliveryTimeScreen extends StatelessWidget {
  const DeliveryTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout'), centerTitle: true),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text('Delivery Time'),
                Spacer(),
                Icon(Icons.check_circle_outline, color: Colors.green)
              ],
            ),
          ),
          ListTile(
            title: const Text('Now'),
            trailing: const Icon(Icons.radio_button_off),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Select Delivery Time'),
            subtitle: const Text('09 - 15 - 2021'),
            trailing: const Icon(Icons.check_circle, color: Colors.green),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DeliveryAddressScreen()),
                );
              },
              child: const Text('Continue'),
            ),
          )
        ],
      ),
    );
  }
}