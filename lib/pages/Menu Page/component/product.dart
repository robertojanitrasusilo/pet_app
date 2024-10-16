import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/pages/detail_page.dart';
import 'package:pet_app/theme.dart';

class product extends StatelessWidget {
  final String name;
  final String image;
  final double price;

  const product(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          )),
      child: Container(
        width: 156,
        height: 210,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Color(0xfff8f8f8)),
        child: Column(children: [
          Center(child: Image.asset(image, width: 100, height: 142)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('RC ${name}', style: regularText.copyWith(fontSize: 12)),
                  Text('\$${price}', style: semiboldText.copyWith(fontSize: 20))
                ],
              ),
              Image.asset('assets/Button.png', width: 30)
            ],
          )
        ]),
      ),
    );
  }
}
