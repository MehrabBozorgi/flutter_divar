import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class BuyTip_Ads extends StatelessWidget {
  final String text;
  final String icon;

  const BuyTip_Ads({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(icon, style: kInfoRow2),
          ),
          Text(text, style: kInfoRow),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ],
      ),
    );
  }
}
