import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar/model/all_model.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/provider/car_provider.dart';
import 'package:flutter_divar/screen/show_ads/click_pic.dart';
import 'package:flutter_divar/widget/line_ads.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'buy_tip.dart';
import 'item/detail/Kebab_Share_Ads.dart';
import 'item/detail/SimilarAds_Car_Ads.dart';
import 'item/detail/buy_tip_ads.dart';
import 'item/detail/call_info_ads.dart';
import 'item/detail/image_ads.dart';
import 'item/detail/info_ads.dart';
import 'item/detail/info_row.dart';
import 'item/detail/placeInfo_ads.dart';
import 'item/detail/title_ads.dart';
import 'item/detail/tozaihat_ads.dart';
import 'item/detail/tozihat_title.dart';

class DetailCar extends StatelessWidget {
  final AllModel allModel;
  final int index;

  const DetailCar(this.allModel, this.index);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AllProvider>(context, listen: false);
    provider.fetchData();
    var car_provider = Provider.of<CarProvider>(context, listen: false);

    car_provider.fetchData();
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
            Divider(
              color: Theme.of(context).primaryColor,
              height: 1,
              endIndent: 15,
              indent: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Info_Ads(
                    textInfo: provider.items[index].kar_kard,
                    index: index,
                    textTitle: '????'
                        '?? ??????',
                  ),
                  Text('|'),
                  Info_Ads(
                    textInfo: provider.items[index].sakht.toString(),
                    index: index,
                    textTitle: '?????? ????????',
                  ),
                  Text('|'),
                  Info_Ads(
                    textInfo: provider.items[index].color,
                    index: index,
                    textTitle: '??????',
                  ),
                ],
              ),
            ),
            Line_Ads(),
            InfoRow(text1: '???????? ?? ??????', text2: provider.items[index].berand),
            Line_Ads(),
            InfoRow(text1: '?????????? ??????????', text2: provider.items[index].motor),
            Line_Ads(),
            InfoRow(text1: '????????????', text2: provider.items[index].dande),
            Line_Ads(),
            InfoRow(text1: '?????????? ??????', text2: provider.items[index].sanad),
            Line_Ads(),
            InfoRow(
                text1: '???????? ????????', text2: provider.items[index].noe_gharardad),
            Line_Ads(),
            InfoRow(text1: '?????????? ????????', text2: provider.items[index].badane),
            Line_Ads(),
            TozihatTitle(text: '??????????????'),
            Tozaihat_Ads(provider: provider, index: index),
            Line_Ads(),
            TozihatTitle(text: '???????? ?????? ??????????'),
            SimilarAds_Car_Ads(car_provider: car_provider),
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
              child: BuyTip_Ads(text: '???????????????? ???????? ??????', icon: '?'),
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
              child: BuyTip_Ads(text: '?????????? ???????? ????????', icon: '!'),
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
