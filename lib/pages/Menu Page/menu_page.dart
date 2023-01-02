import 'package:flutter/material.dart';
import 'package:pet_app/component/icon.dart';
import 'package:pet_app/pages/Menu%20Page/component/locationSearchNotif.dart';
import 'package:pet_app/theme.dart';

class menuPage extends StatelessWidget {
  const menuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [SizedBox(height: 16), locationSearchNotif()]),
    ));
  }
}
