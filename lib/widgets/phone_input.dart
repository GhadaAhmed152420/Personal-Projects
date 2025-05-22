import 'package:flutter/material.dart';

Widget phoneInputWidget({
  required TextEditingController controller,
  required VoidCallback onSubmit,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text("Enter your Number", style: TextStyle(fontSize: 18)),
      const SizedBox(height: 16),
      TextField(
        controller: controller,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
        onPressed: onSubmit,
        child: Text("Submit"),
      ),
    ],
  );
}
