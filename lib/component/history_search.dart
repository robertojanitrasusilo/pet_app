import 'package:flutter/cupertino.dart';
import 'package:pet_app/theme.dart';

class sellerMode extends StatelessWidget {
  const sellerMode({super.key});

  @override
  Widget build(BuildContext context) {
    sellerDetail(int id, String message, String subMessage, String image) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Image.asset(image, width: 48),
            SizedBox(width: 14),
            Column(
              children: [Text(message, style: mediumText)],
            )
          ],
        ),
      );
    }

    return Row();
  }
}
