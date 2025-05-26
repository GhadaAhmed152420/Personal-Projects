import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_market/constants/app_colors.dart';

void filterPopUp(
  BuildContext context,
  void Function(VoidCallback fn) setState,
) {
  String selectedArea = 'All Areas';
  bool offers = false;
  bool freeDelivery = false;

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: StatefulBuilder(
          builder: (context, setSheetState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Filter by',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Delivered To Row
                  Row(
                    children: [
                      Text(
                        'Delivered To',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset(
                        'assets/icons/motorcycle.svg',
                        width: 26.12,
                        height: 16.5,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Dropdown
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30), // شكل بيضاوي
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedArea,
                        isExpanded: true,
                        icon: const SizedBox.shrink(), // إخفاء السهم الافتراضي
                        items:
                            <String>[
                              'All Areas',
                              'Downtown',
                              'Nasr City',
                              'Maadi',
                              'Zamalek',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                        onChanged: (value) {
                          setSheetState(() {
                            selectedArea = value!;
                          });
                        },
                        selectedItemBuilder: (BuildContext context) {
                          return <String>[
                            'All Areas',
                            'Downtown',
                            'Nasr City',
                            'Maadi',
                            'Zamalek',
                          ].map<Widget>((String item) {
                            return Row(
                              children: [
                                const Icon(Icons.keyboard_arrow_down),
                                const SizedBox(width: 6),
                                Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Offers checkbox
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => setSheetState(() => offers = !offers),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: offers ? AppColors.primary : Colors.grey,
                              width: 2,
                            ),
                            color:
                                offers ? AppColors.primary : Colors.transparent,
                          ),
                          width: 24,
                          height: 24,
                          child:
                              offers
                                  ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                  : null,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Offers', style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Free Delivery checkbox
                  Row(
                    children: [
                      GestureDetector(
                        onTap:
                            () => setSheetState(
                              () => freeDelivery = !freeDelivery,
                            ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color:
                                  freeDelivery
                                      ? AppColors.primary
                                      : Colors.grey,
                              width: 2,
                            ),
                            color:
                                freeDelivery
                                    ? AppColors.primary
                                    : Colors.transparent,
                          ),
                          width: 24,
                          height: 24,
                          child:
                              freeDelivery
                                  ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 16,
                                  )
                                  : null,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Free Delivery',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Apply Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Apply Filter',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Close Button
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
