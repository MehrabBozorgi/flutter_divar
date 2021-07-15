import 'package:flutter/material.dart';

class AddAds_AppBar_Leading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        'ex.png',
        height: 16,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
