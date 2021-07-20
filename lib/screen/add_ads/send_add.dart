import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/add_ads/wait_page.dart';
import 'package:flutter_divar/screen/show_ads/item/detail/tozihat_title.dart';
import 'package:flutter_divar/widget/kConst.dart';
import 'package:flutter_divar/widget/line_ads.dart';

class SendAds extends StatelessWidget {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ثبت آگهی',
          style: kInfoRow,
        ),
      ),
      body: Column(
        children: [
          TozihatTitle(text: 'شماره موبایل'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'توجه: لطفاً پس از ثبت آگهی، از طریق هیچ پیامکی برای پرداخت وجه جهت انتشار آگهی اقدام نکنید',
              style: kInfoTozihat2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'کد تأیید به شمارهٔ موبایل شما ارسال خواهد شد. تماس و چت نیز با این شماره انجام می‌شود',
              style: kInfoTozihat2,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 45,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: Text(
              '09033539345',
              style: kInfoRow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'چت دیوار فعال شود',
                  style: kInfoTozihat,
                ),
                Checkbox(
                  value: true, onChanged: (value) {},
                  checkColor: Colors.white, // color of tick Mark
                  activeColor: Colors.red[900],
                ),
              ],
            ),
          ),
          Line_Ads(),
          SizedBox(height: MediaQuery.of(context).size.height - 382),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            color: Colors.white12,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red[900],
                alignment: Alignment.center,
                elevation: 5,
              ),
              child: Text(
                'تایید',
                style: kButton,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WaitPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
