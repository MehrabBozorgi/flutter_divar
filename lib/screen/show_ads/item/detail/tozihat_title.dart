import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/kConst.dart';

class TozihatTitle extends StatelessWidget {
  final String text;

  const TozihatTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        text,
        style: kTitleStyle,
      ),
    );
  }
}
