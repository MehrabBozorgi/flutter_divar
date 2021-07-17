import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

import '../sendPicRools.dart';

class AddAds_Guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => sendPicRools(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text('راهنمای ثبت آگهی', style: kInfoRow),
      ),
    );
  }
}
