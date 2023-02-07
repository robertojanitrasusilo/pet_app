import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme.dart';

class locationBottomSheet extends StatelessWidget {
  const locationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 8),
        Center(
          child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: greyLight),
          ),
        ),
        SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text('Location', style: boldText.copyWith(fontSize: 16)),
        ),
        SizedBox(height: 16),
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
                  hintText: "Search your Location",
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
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: greyDark,
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/Location.png', width: 24),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Track your Location', style: mediumText),
                  SizedBox(height: 8),
                  Text('automatically selects your\ncurrent location',
                      style: mediumText.copyWith(color: greyDark))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
