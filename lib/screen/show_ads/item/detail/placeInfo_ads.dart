import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class PlaceInfo_Ads extends StatelessWidget {
  const PlaceInfo_Ads({
    Key? key,
    required this.provider,
    required this.index,
  }) : super(key: key);

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              provider.items[index].zaman_enteshar,
              textAlign: TextAlign.right,
              style: kTimeStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              'در',
              textAlign: TextAlign.right,
              style: kTimeStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              provider.items[index].shahr,
              textAlign: TextAlign.right,
              style: kTimeStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '|',
              textAlign: TextAlign.right,
              style: kTimeStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              provider.items[index].ostan,
              textAlign: TextAlign.right,
              style: kTimeStyle,
            ),
          ),
        ],
      ),
    );
  }
}
