import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wallet/models/listview_model.dart';

Widget listViewItem(ListViewModel model) => Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(
                  model.image,
                  height: 40,
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.title,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      Text(
                        model.desc,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        model.cost,
                        style: const TextStyle(
                          fontSize: 14.0, color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        model.day,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              thickness: 0.5,
              height: 0.5,
              color: HexColor('D3D3D3'),
            ),
          ),
        ],
      ),
    );
