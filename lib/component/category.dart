import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    contain(int index, String text) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          height: 47,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: selectedIndex == index ? primaryColor : Color(0xfff8f8f8)),
          child: Text(text,
              style: mediumText.copyWith(
                  fontSize: 12,
                  color: selectedIndex == index ? Colors.white : greyDark)),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            width: 47,
            height: 47,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xfff8f8f8)),
            child: Image.asset('assets/Swap.png', width: 24),
          ),
          contain(0, 'Food'),
          contain(1, 'Accesories'),
          contain(2, 'toys'),
        ],
      ),
    );
  }
}
