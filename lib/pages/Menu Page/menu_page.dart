import 'package:flutter/material.dart';
import 'package:pet_app/component/bottomNavBar.dart';
import 'package:pet_app/component/category.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/pages/Menu%20Page/component/locationSearchNotif.dart';
import 'package:pet_app/pages/Menu%20Page/component/product.dart';
import 'package:pet_app/pages/Menu%20Page/component/promo.dart';
import 'package:pet_app/theme.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
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
                  style:
                      regularText.copyWith(fontSize: 12, color: primaryColor)),
            ]),
          ),
          SizedBox(height: 20),
          category(),
          SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text('Best Seller', style: boldText.copyWith(fontSize: 16)),
              Spacer(),
              Text('View All',
                  style:
                      regularText.copyWith(fontSize: 12, color: primaryColor)),
            ]),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                product(
                    name: 'Kitten', image: 'assets/kitten.png', price: 20.99),
                product(
                    name: 'Persian', image: 'assets/persian.png', price: 20.99),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: bottomNavBar(),
    ));
  }
}
