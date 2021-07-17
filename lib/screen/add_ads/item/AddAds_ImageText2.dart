import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class AddAds_ImageText2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 15, left: 15, top: 5),
      child: Text(
        'آگهی‌های دارای عکس تا «۳ برابر» بیشتر توسط کاربران دیده می‌شوند',
        style: kInfoTozihat2,
      ),
    );
  }
}
