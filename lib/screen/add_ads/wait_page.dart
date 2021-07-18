import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/main_screen2.dart';
import 'package:flutter_divar/widget/kConst.dart';

class WaitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'ex.png',
            width: 15,
            height: 15,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen2(),
              ),
            );
          },
        ),
        title: Text(
          'مدیریت آگهی',
          style: kInfoRow,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            child: Text(
              'در صف انتشار',
              style: TextStyle(
                color: Colors.yellow[700],
                fontWeight: FontWeight.bold,
                fontFamily: 'bold',
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Text(
              'آگهی شما ثبت شده و در صف انتشار است. حداکثر 2 ساعت دیگر آگهی شما منتشر خواهد شد.',
              style: kInfoRow,
            ),
          ),
        ],
      ),
    );
  }
}
