import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Info_Ads extends StatelessWidget {
  const Info_Ads({
    required this.index,
    required this.textTitle,
    required this.textInfo,
  });

  final int index;
  final String textInfo;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Text(textTitle, style: kTimeStyle),
          Text(textInfo, style: kTimeStyle2),
        ],
      ),
    );
  }
}
