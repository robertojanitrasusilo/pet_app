import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class inputFormField extends StatelessWidget {
  String type;
  bool password;
  inputFormField({required this.type, this.password = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 24),
      height: 60,
      child: TextFormField(
        cursorColor: primaryColor,
        obscureText: password,
        style: mediumText.copyWith(color: primaryColor),
        decoration: InputDecoration(
          hintText: type,
          hintStyle: mediumText.copyWith(color: greyDark),
          contentPadding: EdgeInsets.only(left: 24, top: 20, bottom: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: greyLight)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
