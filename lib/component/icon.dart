import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconWidget extends StatelessWidget {
  String image;

  iconWidget({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11),
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 20,
              offset: Offset(4, 4),
            )
          ]),
      child: Image.asset(image, width: 24),
    );
  }
}
