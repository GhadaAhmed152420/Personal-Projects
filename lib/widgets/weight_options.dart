import 'package:flutter/material.dart';

class WeightOptions extends StatefulWidget {
  const WeightOptions({super.key});

  @override
  _WeightOptionsState createState() => _WeightOptionsState();
}

class _WeightOptionsState extends State<WeightOptions> {
  String? selectedWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            "Select weight",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          children: [
            RadioListTile<String>(
              value: "50g",
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
              title: Text("50 Gram – 4.00 KD"),
            ),
            RadioListTile<String>(
              value: "1kg",
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
              title: Text("1 Kg – 6.25 KD"),
            ),
            RadioListTile<String>(
              value: "2kg",
              groupValue: selectedWeight,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                });
              },
              title: Text("2 Kg – 12.00 KD"),
            ),
          ],
        ),
      ],
    );
  }
}
