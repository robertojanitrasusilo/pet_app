import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/theme.dart';

class notificationPage extends StatelessWidget {
  const notificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                iconWidget(image: 'assets/arrow.png'),
                SizedBox(width: 95),
                Text('Notification', style: boldText.copyWith(fontSize: 15))
              ],
            ),
          ),
          SizedBox(height: 16)
        ]),
      ),
    );
  }
}
