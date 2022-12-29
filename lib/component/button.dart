import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class buttonWidget extends StatelessWidget {
  var linked;
  buttonWidget({this.linked, super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonstyle = ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(MediaQuery.of(context).size.width - (2 * 24), 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        primary: primaryColor,
        textStyle: boldText.copyWith(fontSize: 16, color: Colors.white));
    return ElevatedButton(
      style: buttonstyle,
      onPressed: linked,
      child: Text('Get Started'),
    );
  }
}
