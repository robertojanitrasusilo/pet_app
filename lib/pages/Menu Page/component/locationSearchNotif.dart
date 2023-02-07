import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/pages/Menu%20Page/component/locationBottomSheet.dart';
import 'package:pet_app/pages/notification_page.dart';
import 'package:pet_app/pages/search_page.dart';
import 'package:pet_app/theme.dart';

class locationSearchNotif extends StatelessWidget {
  const locationSearchNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32))),
                context: context,
                builder: (BuildContext context) => locationBottomSheet()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Location',
                      style:
                          semiboldText.copyWith(fontSize: 12, color: greyDark),
                    ),
                    SizedBox(width: 8),
                    Image.asset('assets/dropdown.png', width: 10)
                  ],
                ),
                SizedBox(height: 4),
                Text('Jebres, Surakarta',
                    style: regularText.copyWith(fontSize: 16))
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => searchPage())),
              child: iconWidget(image: 'assets/Search.png')),
          SizedBox(width: 12),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notificationPage())),
              child: iconWidget(image: 'assets/Notification.png')),
        ],
      ),
    );
  }
}
