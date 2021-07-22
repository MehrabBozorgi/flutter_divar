import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Tozaihat_Ads extends StatelessWidget {
  const Tozaihat_Ads({
    Key? key,
    required this.provider,
    required this.index,
  }) : super(key: key);

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        provider.items[index].tozihat,
        style: kInfoTozihat,
      ),
    );
  }
}
