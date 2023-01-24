import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/pages/Menu%20Page/component/locationSearchNotif.dart';
import 'package:pet_app/pages/Menu%20Page/component/promo.dart';
import 'package:pet_app/theme.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        SizedBox(height: 16),
        locationSearchNotif(),
        SizedBox(height: 14),
        promo(),
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text('Category', style: boldText.copyWith(fontSize: 16)),
            Spacer(),
            Text('View All',
                style: regularText.copyWith(fontSize: 12, color: primaryColor)),
          ]),
        ),
      ]),
    ));
  }
}
