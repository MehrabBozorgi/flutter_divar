import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Row_AddAds extends StatelessWidget {
  final String img;
  final String title;

  const Row_AddAds({required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: EdgeInsets.only(right: 15, left: 15, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.network(
            img,
            width: 25,
            height: 25,
            color: Theme.of(context).primaryColor,
            fit: BoxFit.contain,
          ),
          Container(
            width: 250,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: kInfoRow,
            ),
          ),
          Container(
            width: 30,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
