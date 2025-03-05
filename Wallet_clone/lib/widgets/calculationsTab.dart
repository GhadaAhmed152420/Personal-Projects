import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wallet/models/listview_model.dart';
import 'package:wallet/widgets/listview_item.dart';
import 'package:wallet/widgets/skelton.dart';
import 'package:pie_chart/pie_chart.dart';


List<ListViewModel> items = [
  ListViewModel(image: 'assets/images/tax.png', title: 'الضرائب', desc: 'نقد', day: 'اليوم',cost: '-٨٠،٠٠ ج.م.'),
  ListViewModel(image: 'assets/images/t-shirt.png', title: 'الملابس والاحذيه', desc: 'نقد', day: 'اليوم',cost: '-١١٠،٠٠ ج.م.'),
  ListViewModel(image: 'assets/images/cutlery.png', title: 'مطعم الوجبات السريعه', desc: 'نقد', day: 'اليوم',cost: '-٦٠،٠٠ ج.م.'),
  ListViewModel(image: 'assets/images/school-bus.png', title: 'وسائل النقل', desc: 'نقد', day: 'اليوم',cost: '-٥٠،٠٠ ج.م.'),
];

Widget calculationsTab() => SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 185,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'قائمة الحسابات',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'نقد',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('٢٠٠.٠٠ ج.م.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.blue, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Spacer(),
                                    Text(
                                      'اضافة حساب',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.add_circle,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      children: [
                        Container(
                          width: 100.0,
                          height: 40.0,
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Center(child: Text('تعديل الرصيد')),
                        ),
                        const Spacer(),
                        Container(
                          width: 130.0,
                          height: 40.0,
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.blue,
                                ),
                              ),
                              Center(child: Text('السجلات')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 400,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text('هيكل المصروفات'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'أخر 30 يوما',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      '٣٠٠,٠٠ ج.م.',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  PieChart(
                    chartType: ChartType.ring,
                    ringStrokeWidth: 32,
                    chartLegendSpacing: 32,
                    chartRadius: 150,
                    colorList: const [
                      Colors.red,
                      Colors.grey,
                      Colors.lightBlue,
                      Colors.lightGreen
                    ],
                    dataMap: const {
                      'طعام ومشروبات': 20,
                      'وسائل النقل': 16,
                      'تسوق': 36,
                      'مصاريف ومالية': 26
                    },
                    centerText: 'الكل ٣٠٠ ج.م ',
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValues: false,
                      showChartValueBackground: false,
                    ),
                    legendOptions: const LegendOptions(
                        showLegendsInRow: true,
                        legendPosition: LegendPosition.bottom,
                        legendShape: BoxShape.circle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0,
                        )),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: HexColor('D3D3D3'),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('اظهار المزيد')),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 408,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text('نظره عامة على اخر السجلات'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text(
                      'أخر 30 يوما',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 270,
                      width: double .infinity,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  listViewItem(items[index]),
                              itemCount: items.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: HexColor('D3D3D3'),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('اظهار المزيد')),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 350,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text('الدفعات المخططة القادمة'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Skelton(width: 60.0, height: 20.0),
                                      Spacer(),
                                      Skelton(width: 100.0, height: 20.0),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Skelton(width: 80.0),
                                      Spacer(),
                                      Skelton(width: 80.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: HexColor('E9E9E8'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: HexColor('E9E9E8'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Skelton(width: 60.0, height: 20.0),
                                      Spacer(),
                                      Skelton(width: 100.0, height: 20.0),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Skelton(width: 80.0),
                                      Spacer(),
                                      Skelton(width: 80.0),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundColor: HexColor('E9E9E8'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0.5,
                      height: 0.5,
                      color: HexColor('D3D3D3'),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('اظهار المزيد')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
