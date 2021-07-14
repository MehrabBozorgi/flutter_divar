import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/add_ads/add_ads_screen.dart';
import 'package:flutter_divar/widget/kConst.dart';

class AddAds_AppBar_Action extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.replay_rounded),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'آیا مایل به ثبت آگهی از ابتدا هستید؟',
                    style: kInfoRow,
                  ),
                  SizedBox(height: 35),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Button_yes_or_no(
                        text: 'نه',
                        function: () {
                          print('aaaa');
                          Navigator.of(context).pop();
                        },
                      ),
                      Button_yes_or_no(
                        text: 'بله',
                        function: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddAdsScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class Button_yes_or_no extends StatelessWidget {
  final String text;
  final Function function;

  const Button_yes_or_no({required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red[900],
      onTap: () {
        function();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        width: 160,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Color(0xFFB71C1C),
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: kInfoRow4,
        ),
      ),
    );
  }
}
