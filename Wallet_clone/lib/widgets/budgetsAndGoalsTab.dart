import 'package:flutter/material.dart';

Widget budgetsAndGoalsTab() => Container(
  width: double.infinity,
  child: Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/budgets.png',height: 50, width: 50,),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('الميزانيات'),
                            SizedBox(height: 5.0,),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('Start with budgets to have an efficient overview of your spending limits',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.grey,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: const Text('انشاء ميزانية')),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  offset: const Offset(0, 3), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/goals.png',height: 50, width: 50,),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('الاهداف'),
                            SizedBox(height: 5.0,),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text('.Set your first goal and have a quick overview of your progress',
                                style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.grey,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: const Text('قم بانشاء هدف')),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
