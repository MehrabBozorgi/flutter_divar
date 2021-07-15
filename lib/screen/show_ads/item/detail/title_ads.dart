import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Title_Ads extends StatelessWidget {
  const Title_Ads({
    Key? key,
    required this.provider,
    required this.index,
  }) : super(key: key);

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        provider.items[index].title,
        textAlign: TextAlign.right,
        style: kTitleStyle,
      ),
    );
  }
}
