import 'package:flutter/material.dart';
import 'package:pet_app/component/button.dart';
import 'package:pet_app/component/textFormField.dart';
import 'package:pet_app/theme.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 46),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Hello,\nWelcome Back!',
              style: semiboldText.copyWith(fontSize: 40),
            ),
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Water is life. Water is a basic human need. In\nvarious lines of life, humans need water.',
              style: regularText.copyWith(color: Color(0xff898989)),
            ),
          ),
          SizedBox(height: 32),
          Center(
              child: inputFormField(
            type: 'Email',
          )),
          SizedBox(height: 16),
          Center(
            child: inputFormField(
              type: 'Password',
              password: true,
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: 112,
                  color: Color(0xffE3E8F1),
                ),
                Text(
                  'Or',
                  style: regularText.copyWith(
                      fontSize: 12, color: Color(0xffC6CEDD)),
                ),
                Container(
                  height: 1,
                  width: 112,
                  color: Color(0xffE3E8F1),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              loginAuthButton(
                image: 'assets/google.png',
                loginAuthLinked: () {},
              ),
              Spacer(),
              loginAuthButton(
                image: 'assets/facebook.png',
                loginAuthLinked: () {},
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 108),
          Center(
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: 'Don’t have an account?',
                  style: regularText.copyWith(fontSize: 12)),
              TextSpan(
                  text: ' Create Account',
                  style: boldText.copyWith(fontSize: 12, color: primaryColor))
            ])),
          ),
          SizedBox(height: 32),
          Center(child: buttonWidget()),
          SizedBox(height: 24)
        ]),
      ),
    ));
  }
}
