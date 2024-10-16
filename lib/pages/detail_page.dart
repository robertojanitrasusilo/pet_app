import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              children: [
                iconWidget(image: 'assets/arrow.png'),
                Spacer(),
                Text('Product Detail', style: boldText.copyWith(fontSize: 15)),
                Spacer(),
                iconWidget(image: 'assets/Heart.png')
              ],
            ),
          ),
          SizedBox(height: 24),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              height: 311,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: greyLight),
              child: Image.asset('assets/promo.png'),
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text('Royal Canin Adult',
                style: semiboldText.copyWith(fontSize: 16)),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.',
              textAlign: TextAlign.justify,
              style: regularText.copyWith(fontSize: 12, color: greyDark),
            ),
          )
        ],
      )),
    );
  }
}
