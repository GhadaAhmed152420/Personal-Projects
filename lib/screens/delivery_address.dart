import 'package:flutter/material.dart';

class DeliveryAddressScreen extends StatelessWidget {
  const DeliveryAddressScreen({super.key});

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
                Text('Select Delivery Address'),
              ],
            ),
          ),
          ListTile(
            title: const Text('Add New Address'),
            leading: const Icon(Icons.add),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Address 1'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Doe'),
                Text('+000-11-1234567'),
                Text('Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates')
              ],
            ),
            trailing: const Icon(Icons.check_circle, color: Colors.green),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Continue'),
            ),
          )
        ],
      ),
    );
  }
}
