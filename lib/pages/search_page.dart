import 'package:flutter/material.dart';
import 'package:pet_app/component/category.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/theme.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: iconWidget(image: 'assets/arrow.png')),
                SizedBox(width: 110),
                Text('Search', style: boldText.copyWith(fontSize: 15))
              ],
            ),
          ),
          SizedBox(height: 36),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - (2 * 24),
              height: 60,
              child: TextFormField(
                style: mediumText,
                scrollPadding: EdgeInsets.symmetric(vertical: 20),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: greyDark,
                    ),
                    hintStyle: mediumText.copyWith(color: greyDark),
                    hintText: "Search your Product",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE5E4E3)),
                        borderRadius: BorderRadius.circular(16)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE5E4E3)),
                        borderRadius: BorderRadius.circular(16))),
              ),
            ),
          ),
          SizedBox(height: 24),
          category(),
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text('Recent', style: boldText.copyWith(fontSize: 16)),
          )
        ]),
      ),
    );
  }
}
