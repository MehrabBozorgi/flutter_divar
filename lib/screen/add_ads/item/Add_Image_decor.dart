import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Add_Image_decor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
          Image.asset(
            'no_image.png',
            width: 55,
            height: 55,
            fit: BoxFit.cover,
            color: Colors.grey,
          ),
          Text(
            'عکس',
            style: kInfoTozihat2,
          )
        ],
      ),
    );
  }
}