import 'package:flutter/material.dart';
import 'package:fruit_market/constants/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget otpInputWidget({
  required TextEditingController controller,
  required VoidCallback onConfirm,
  required BuildContext context,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text("Enter Received OTP", style: TextStyle(fontSize: 18)),
      const SizedBox(height: 16),
      PinCodeTextField(
        appContext: context,
        length: 4,
        controller: controller,
        obscureText: true,
        onChanged: (_) {},
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldHeight: 50,
          fieldWidth: 50,
          borderRadius: BorderRadius.circular(8),
          activeFillColor: AppColors.primary,
          inactiveFillColor: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      ElevatedButton(
        onPressed: onConfirm,
        child: Text("Confirm"),
      ),
    ],
  );
}
