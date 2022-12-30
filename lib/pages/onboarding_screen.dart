import 'package:flutter/material.dart';
import 'package:pet_app/component/button.dart';
import 'package:pet_app/pages/login_page.dart';
import 'package:pet_app/theme.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  late PageController _pageController;
  int pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Meet your\nanimal needs\nhere',
              style: semiboldText.copyWith(fontSize: 40),
            ),
          ),
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              controller: _pageController,
              children: [
                onboardingContent(image: 'assets/board1.png'),
                onboardingContent(image: 'assets/board2.png'),
                onboardingContent(image: 'assets/board3.png'),
              ],
            ),
          ),
          SizedBox(height: 17.43),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Get interesting promos here, register your\naccount immediately so you can meet your\nanimal needs.',
              style: regularText.copyWith(color: Color(0xff898989)),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: dotIndicator(isactive: index == pageIndex),
                      ))
            ],
          ),
          SizedBox(height: 50),
          Center(child: buttonWidget(
            linked: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => loginPage(),
                  ),
                  (route) => false);
            },
          )),
          SizedBox(height: 24)
        ]),
      ),
    );
  }
}

class dotIndicator extends StatelessWidget {
  final bool isactive;
  const dotIndicator({this.isactive = false, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: isactive ? primaryColor : greyLight),
    );
  }
}

class onboardingContent extends StatelessWidget {
  final String image;
  const onboardingContent({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 318.57,
    );
  }
}
