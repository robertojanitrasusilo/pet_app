import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/theme.dart';

class locationSearchNotif extends StatelessWidget {
  const locationSearchNotif({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Location',
                    style: semiboldText.copyWith(fontSize: 12, color: greyDark),
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
          Spacer(),
          iconWidget(image: 'assets/Search.png'),
          SizedBox(width: 12),
          iconWidget(image: 'assets/Notification.png'),
        ],
      ),
    );
  }
}
