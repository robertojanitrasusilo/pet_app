import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class menu extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  const menu(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24), color: Color(0xfff8f8f8)),
      child: Column(children: [
        SizedBox(height: 7),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Image.asset(image, width: 142),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Column(
                children: [
                  Text(name, style: regularText.copyWith(fontSize: 12)),
                  Text('\$${price}', style: semiboldText.copyWith(fontSize: 20))
                ],
              ),
              Image.asset(
                'assets/Button.png',
                width: 30,
              )
            ],
          ),
        )
      ]),
    );
  }
}
