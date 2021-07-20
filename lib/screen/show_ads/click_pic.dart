import 'package:flutter/material.dart';

class ClickPic extends StatelessWidget {
  final String img;

  ClickPic({required this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Scaffold(
        body: Center(
          child: Hero(
            tag: '1',
            child: Image.network(
              img,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
