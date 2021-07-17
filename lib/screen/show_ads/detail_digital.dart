import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar/model/all_model.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/screen/show_ads/click_pic.dart';
import 'package:flutter_divar/widget/kConst.dart';
import 'package:flutter_divar/widget/line_ads.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'buy_tip.dart';
import 'item/detail/Kebab_Share_Ads.dart';
import 'item/detail/buy_tip_ads.dart';
import 'item/detail/call_info_ads.dart';
import 'item/detail/image_ads.dart';
import 'item/detail/placeInfo_ads.dart';
import 'item/detail/title_ads.dart';
import 'item/detail/tozaihat_ads.dart';
import 'item/detail/tozihat_title.dart';

class DetailDigital extends StatelessWidget {
  final AllModel allModel;
  final int index;

  const DetailDigital(this.allModel, this.index);

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
              textTitle: 'برند',
              text: provider.items[index].berand,
            ),
            Line_Ads(),
            InfoAds2(
              provider: provider,
              index: index,
              textTitle: 'وضیعت',
              text: provider.items[index].vaziat,
            ),
            Line_Ads(),
            InfoAds2(
              provider: provider,
              index: index,
              textTitle: 'قیمت',
              text: provider.items[index].price,
            ),
            Line_Ads(),
            TozihatTitle(text: 'توضیحات'),
            Tozaihat_Ads(provider: provider, index: index),
            Line_Ads(),
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

class InfoAds2 extends StatelessWidget {
  const InfoAds2({
    required this.provider,
    required this.index,
    required this.textTitle,
    required this.text,
  });

  final AllProvider provider;
  final int index;
  final String textTitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textTitle, style: kTimeStyle),
          Text(text, style: kTimeStyle2)
        ],
      ),
    );
  }
}
