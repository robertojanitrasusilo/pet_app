import 'package:flutter/material.dart';
import 'package:pet_app/component/button.dart';
import 'package:pet_app/component/checkbox.dart';
import 'package:pet_app/component/textFormField.dart';
import 'package:pet_app/theme.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 46),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Create\nNew Account',
              style: semiboldText.copyWith(fontSize: 40),
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Water is life. Water is a basic human need. In various lines of life, humans need water.',
              style: regularText.copyWith(color: Color(0xff898989)),
            ),
          ),
          SizedBox(height: 32),
          Center(
            child: Column(
              children: [
                inputFormField(type: 'Full Name'),
                SizedBox(height: 16),
                inputFormField(type: 'Email'),
                SizedBox(height: 16),
                inputFormField(type: 'Password', password: true),
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                checkbox(),
                SizedBox(width: 10),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'I Agree to the',
                      style:
                          regularText.copyWith(fontSize: 12, color: greyDark)),
                  TextSpan(
                      text: ' Terms of Service',
                      style: mediumText.copyWith(
                          fontSize: 12, color: primaryColor)),
                  TextSpan(
                      text: ' and',
                      style:
                          regularText.copyWith(fontSize: 12, color: greyDark)),
                  TextSpan(
                      text: ' Privacy Policy',
                      style: mediumText.copyWith(
                          fontSize: 12, color: primaryColor))
                ]))
              ],
            ),
          ),
          SizedBox(height: 96),
          Center(
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Have an account?',
                    style: regularText.copyWith(fontSize: 12)),
                TextSpan(
                    text: ' Login',
                    style: boldText.copyWith(fontSize: 12, color: primaryColor))
              ])),
            ),
          ),
          SizedBox(height: 32),
          Center(child: buttonWidget())
        ]),
      ),
    ));
  }
}
