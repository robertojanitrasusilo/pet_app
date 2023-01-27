import 'package:flutter/cupertino.dart';
import 'package:pet_app/theme.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    icons(int index, String image) {
      return GestureDetector(
          onTap: () => setState(() {
                selectedIndex = index;
              }),
          child: selectedIndex == index
              ? Column(
                  children: [
                    Spacer(),
                    Image.asset(image, width: 24, color: primaryColor),
                    SizedBox(height: 6),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: primaryColor),
                    ),
                    Spacer(),
                  ],
                )
              : Image.asset(image, width: 24, color: greyLight));
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 55),
      width: MediaQuery.of(context).size.width,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          color: Color(0xfff8f8f8)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        icons(0, 'assets/Home.png'),
        icons(1, 'assets/Time.png'),
        icons(2, 'assets/Bag.png'),
        icons(3, 'assets/Profile.png')
      ]),
    );
  }
}
