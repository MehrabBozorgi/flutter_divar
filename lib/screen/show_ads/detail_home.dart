import 'package:flutter/material.dart';
import 'package:flutter_divar/model/all_model.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/provider/home_provider.dart';
import 'package:flutter_divar/screen/show_ads/detail_digital.dart';
import 'package:flutter_divar/screen/show_ads/item/detail/tozaihat_ads.dart';
import 'package:flutter_divar/screen/show_ads/item/detail/tozihat_title.dart';
import 'package:flutter_divar/widget/line_ads.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'buy_tip.dart';
import 'click_pic.dart';
import 'item/detail/Kebab_Share_Ads.dart';
import 'item/detail/SimilarAds_Home_Ads.dart';
import 'item/detail/buy_tip_ads.dart';
import 'item/detail/call_info_ads.dart';
import 'item/detail/image_ads.dart';
import 'item/detail/info_ads.dart';
import 'item/detail/placeInfo_ads.dart';
import 'item/detail/title_ads.dart';

class DetailHome extends StatelessWidget {
  final AllModel allModel;
  final int index;

  const DetailHome(this.allModel, this.index);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AllProvider>(context, listen: false);
    provider.fetchData();
    var home_provider = Provider.of<HomeProvider>(context, listen: false);
    home_provider.fetchData();
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
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Info_Ads(
                      textInfo: provider.items[index].metr.toString(),
                      index: index,
                      textTitle: 'متراژ'),
                  Text('|'),
                  Info_Ads(
                    textInfo: provider.items[index].sakht.toString(),
                    index: index,
                    textTitle: 'ساخت',
                  ),
                  Text('|'),
                  Info_Ads(
                    textInfo: provider.items[index].otagh.toString(),
                    index: index,
                    textTitle: 'اتاق',
                  ),
                ],
              ),
            ),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'قیمت کل',
                text: provider.items[index].price),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'قیمت هر متر',
                text: provider.items[index].metr_price),
            Line_Ads(),
            InfoAds2(
                provider: provider,
                index: index,
                textTitle: 'آگهی دهنده',
                text: provider.items[index].agahi_dahande),
            Line_Ads(),
            TozihatTitle(text: 'توضیحات'),
            Tozaihat_Ads(provider: provider, index: index),
            TozihatTitle(
              text: 'آگهی های مشابه',
            ),
            SimilarAds_Home_Ads(home_provider: home_provider),
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
