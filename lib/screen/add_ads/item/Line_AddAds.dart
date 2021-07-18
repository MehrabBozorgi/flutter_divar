import 'package:flutter/material.dart';

class LineAddAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: Divider(
        color: Theme.of(context).primaryColor,
        height: 0,
        thickness: 0.2,
      ),
    );
  }
}
