import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/pages/Menu%20Page/component/product.dart';
import 'package:pet_app/theme.dart';

class bestSeller extends StatelessWidget {
  const bestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: iconWidget(image: 'assets/arrow.png')),
                    SizedBox(width: 100),
                    Text(
                      'Best Seller',
                      style: boldText.copyWith(fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      product(
                          name: 'Kitten',
                          image: 'assets/kitten.png',
                          price: 20.99),
                      product(
                          name: 'Persian',
                          image: 'assets/persian.png',
                          price: 22.99),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      product(
                          name: 'Kitten',
                          image: 'assets/kitten.png',
                          price: 20.99),
                      product(
                          name: 'Persian',
                          image: 'assets/persian.png',
                          price: 22.99),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      product(
                          name: 'Kitten',
                          image: 'assets/kitten.png',
                          price: 20.99),
                      product(
                          name: 'Persian',
                          image: 'assets/persian.png',
                          price: 22.99),
                    ],
                  ),
                  SizedBox(height: 16),
                ]),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
