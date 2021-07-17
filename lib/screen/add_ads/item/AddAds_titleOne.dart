import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class AddAds_titleOne extends StatelessWidget {
  final String text_right;
  final String text_left;

  const AddAds_titleOne({required this.text_left, required this.text_right});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text_right, style: kInfoRow),
          Container(
            width: 110,
            child: Text(
              text_left,
              textAlign: TextAlign.center,
              style: kInfoRow3,
            ),
          ),
        ],
      ),
    );
  }
}
