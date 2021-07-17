import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class AddAds_Pic extends StatelessWidget {
  final IconData icon;
  final String text;

  const AddAds_Pic({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
        ),
        Text(
          text,
          style: kInfoRow,
        )
      ],
    );
  }
}
