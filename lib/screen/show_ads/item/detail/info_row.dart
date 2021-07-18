import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class InfoRow extends StatelessWidget {
  final String text1;
  final String text2;

  const InfoRow({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: kTimeStyle,
          ),
          Text(
            text2,
            style: kInfoRow,
          ),
        ],
      ),
    );
  }
}
