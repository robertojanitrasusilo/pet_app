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

class loginAuthButton extends StatelessWidget {
  String image;
  var loginAuthLinked;
  loginAuthButton({required this.image, this.loginAuthLinked, super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle authStyle = OutlinedButton.styleFrom(
        minimumSize: Size(MediaQuery.of(context).size.width - (2 * 109), 60),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: greyLight)));
    return OutlinedButton(
        style: authStyle,
        onPressed: loginAuthLinked,
        child: Image.asset(image));
  }
}
