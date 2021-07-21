import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/theme_changer.dart';
import 'package:flutter_divar/screen/add_ads/item/Line_AddAds.dart';
import 'package:flutter_divar/screen/setting/signup_screen.dart';
import 'package:flutter_divar/widget/kConst.dart';

import 'Setting.dart';

class SettingScreen extends StatefulWidget {
  final ThemeChanger themeChanger;

  const SettingScreen({required this.themeChanger});

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool visib = true;
  String buttonText1 = 'ورود به حساب';
  String buttonText2 = 'خروج';
  bool pressON = false;
  bool pressOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'دیوار من',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'normal',
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              'برای استفاده از تمام امکانات دیوار ،مانند ثبت و مدیریت آگهی وارد حساب کاربری خود در دیوار شوید',
              style: kInfoRow,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 15, left: 15, bottom: 15),
            width: double.infinity,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 105, height: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: pressOff
                    ? Text(
                        "خروج",
                        style: kInfoTozihat,
                      )
                    : Text(
                        "ورود به حساب",
                        style: kInfoTozihat,
                      ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                  setState(() => visib = !visib);
                  setState(() => pressON = !pressON);
                  setState(() => pressOff = !pressOff);
                  print('object');
                },
              ),
            ),
          ),
          LineAddAds(),
          Visibility(
            visible: visib,
            child: Setting_Row(
              text: 'آگهی های من',
              icon: Icons.person_add_alt_rounded,
              number_of_top: 10,
              number_of_bottom: 0,
            ),
          ),
          Visibility(
            visible: visib,
            child: Setting_Row(
              text: 'پرداخت های من',
              icon: Icons.credit_card_rounded,
              number_of_top: 15,
              number_of_bottom: 0,
            ),
          ),
          Setting_Row(
            text: 'نشان ها',
            icon: Icons.bookmark,
            number_of_top: 15,
            number_of_bottom: 0,
          ),
          Setting_Row(
            text: 'بازدیدهای اخیر',
            icon: Icons.restore_rounded,
            number_of_top: 15,
            number_of_bottom: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Setting(themeChanger: widget.themeChanger),
                ),
              );
            },
            child: Setting_Row(
              text: 'تنظیمات',
              icon: Icons.settings,
              number_of_top: 15,
              number_of_bottom: 5,
            ),
          ),
          LineAddAds(),
          Setting_Row(
            text: 'دیوار برای کسب و کار',
            icon: Icons.business_outlined,
            number_of_top: 10,
            number_of_bottom: 10,
          ),
          LineAddAds(),
          Setting_Row(
            text: 'پشتیبانی و قوانین',
            icon: Icons.check_circle_outline_rounded,
            number_of_top: 10,
            number_of_bottom: 0,
          ),
          Setting_Row(
            text: 'درباره دیوار',
            icon: Icons.info_outline_rounded,
            number_of_top: 15,
            number_of_bottom: 0,
          ),
        ],
      ),
    );
  }
}

class Setting_Row extends StatelessWidget {
  final String text;
  final double number_of_top;
  final double number_of_bottom;
  final IconData icon;

  const Setting_Row({
    required this.text,
    required this.number_of_top,
    required this.number_of_bottom,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: number_of_top, right: 10, left: 10, bottom: number_of_bottom),
      child: Row(
        children: [
          Icon(
            icon,
          ),
          Container(
            width: 280,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: kInfoRow,
            ),
          ),
          Container(
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
