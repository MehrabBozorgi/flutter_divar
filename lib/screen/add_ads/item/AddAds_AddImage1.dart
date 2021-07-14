import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class AddAds_AddImage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Icon(
            Icons.add_a_photo,
            size: 50,
            color: Colors.grey,
          ),
          Text(
            'افزودن عکس',
            style: kInfoTozihat2,
          )
        ],
      ),
    );
  }
}
