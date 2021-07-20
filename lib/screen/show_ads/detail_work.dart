import 'package:flutter/material.dart';
import 'package:flutter_divar/model/all_model.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/screen/show_ads/detail_digital.dart';
import 'package:flutter_divar/screen/show_ads/item/detail/tozihat_title.dart';
import 'package:flutter_divar/widget/line_ads.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'buy_tip.dart';
import 'click_pic.dart';
import 'item/detail/Kebab_Share_Ads.dart';
import 'item/detail/buy_tip_ads.dart';
import 'item/detail/call_info_ads.dart';
import 'item/detail/image_ads.dart';
import 'item/detail/placeInfo_ads.dart';
import 'item/detail/title_ads.dart';
import 'item/detail/tozaihat_ads.dart';

class DetailWork extends StatelessWidget {
  final AllModel allModel;
  final int index;

  const DetailWork(this.allModel, this.index);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AllProvider>(context, listen: false);
    provider.fetchData();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 5,
        actions: [
          IconButton(
            icon: Icon(Icons.bookmark_border_outlined),
            onPressed: () {},
          ),
          Kebab_Share_Ads(provider: provider, index: index),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ClickPic(img: provider.items[index].img),
                  ),
                );
              },
              child: Hero(
                tag: '1',
                child: Image_Ads(provider: provider, index: index),
              ),
            ),
            Title_Ads(provider: provider, index: index),
            PlaceInfo_Ads(provider: provider, index: index),
            SizedBox(height: 20),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'نوع همکاری',
                text: provider.items[index].noe_gharardad),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'سابقه کار',
                text: provider.items[index].sabeghe),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'دست مرد',
                text: provider.items[index].price),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'بیمه',
                text: provider.items[index].bime),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'ساعت کاری',
                text: provider.items[index].work_time),
            Line_Ads(),
            TozihatTitle(text: 'توضیحات'),
            Tozaihat_Ads(provider: provider, index: index),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuyTip(),
                  ),
                );
              },
              child: BuyTip_Ads(text: 'راهنمایی خرید امن', icon: '?'),
            ),
            Line_Ads(),
            InkWell(
              onTap: () {
                Future<void> _launchInBrowser(String url) async {
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                      forceWebView: false,
                      headers: <String, String>{'header_key': 'header_value'},
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                }

                _launchInBrowser('https://divar.ir/s/tehran');
              },
              child: BuyTip_Ads(text: 'گزارش مشکل آگهی', icon: '!'),
            ),
            Line_Ads(),
            SizedBox(height: 10),
            CallInfo_Ads(provider: provider, index: index),
          ],
        ),
      ),
    );
  }
}
