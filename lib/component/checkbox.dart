import 'package:flutter/cupertino.dart';
import 'package:pet_app/theme.dart';

class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool checklist = false;

  _tappedItem() {
    setState(() {
      checklist = !checklist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _tappedItem,
      child: Container(
          padding: EdgeInsets.all(4),
          width: 14,
          height: 14,
          decoration: checklist == true
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: primaryColor, width: 2))
              : BoxDecoration(
                  color: greyLight, borderRadius: BorderRadius.circular(4)),
          child: checklist == true
              ? Container(
                  width: 6,
                  height: 6,
                  color: primaryColor,
                )
              : null),
    );
  }
}
