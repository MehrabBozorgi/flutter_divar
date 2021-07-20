import 'package:flutter/material.dart';

class Line_Ads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).primaryColor,
      height: 1,
      endIndent: 20,
      indent: 20,
    );
  }
}
