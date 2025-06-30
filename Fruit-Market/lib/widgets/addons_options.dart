import 'package:flutter/material.dart';

class AddonsOptions extends StatefulWidget {
  const AddonsOptions({super.key});

  @override
  State<AddonsOptions> createState() => _AddonsOptionsState();
}

class _AddonsOptionsState extends State<AddonsOptions> {
  String? selectedAddon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: const Text(
            "Select Addons",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
            RadioListTile<String>(
              value: "addon50g",
              groupValue: selectedAddon,
              onChanged: (value) {
                setState(() {
                  selectedAddon = value;
                });
              },
              title: const Text("50 Gram – 4.00 KD"),
            ),
            RadioListTile<String>(
              value: "addon1kg",
              groupValue: selectedAddon,
              onChanged: (value) {
                setState(() {
                  selectedAddon = value;
                });
              },
              title: const Text("1 Kg – 6.25 KD"),
            ),
          ],
        ),
      ],
    );
  }
}
