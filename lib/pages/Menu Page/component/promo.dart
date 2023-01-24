import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class promo extends StatelessWidget {
  const promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - (2 * 24),
          height: 139,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24), color: primaryColor),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 150, top: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Royal Canin\nAdult Pomeraniann',
                      style: boldText.copyWith(color: Colors.white)),
                  SizedBox(height: 8),
                  Text(
                    'Get an interesting promo\nhere, without conditions',
                    style:
                        regularText.copyWith(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(24)),
                child: Image.asset('assets/Ellipse 136.png',
                    width: 69, fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/Ellipse 135.png', width: 57),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(24)),
                  child: Image.asset('assets/Ellipse 134.png', width: 67)),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/Ellipse 133.png', width: 99),
            )
          ]),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/promo.png', width: 192, height: 206)),
      ],
    );
  }
}
