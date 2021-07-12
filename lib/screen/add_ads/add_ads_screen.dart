import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/add_ads/home_addAds.dart';
import 'package:flutter_divar/screen/show_ads/item/detail/tozihat_title.dart';
import 'package:flutter_divar/screen/show_ads/item/search_bar/search_bar.dart';
import 'package:flutter_divar/widget/line_ads.dart';
import 'car_addAds.dart';
import 'item/Row_AddAds.dart';

class AddAdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(),
              TozihatTitle(text: 'دسته آگهی را انتخواب کنید'),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home_addAds(),
                    ),
                  );
                },
                child: Row_AddAds(
                    title: 'املاک',
                    img:
                        'https://image.flaticon.com/icons/png/512/69/69524.png'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Car_addAds(),
                    ),
                  );
                },
                child: Row_AddAds(
                    title: 'وسایل نقلیه',
                    img:
                        'https://www.freeiconspng.com/thumbs/car-icon-png/car-icon-png-25.png'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {},
                child: Row_AddAds(
                    title: 'لوازم الکترونیکی',
                    img:
                        'https://cdn2.iconfinder.com/data/icons/font-awesome/1792/mobile-512.png'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {},
                child: Row_AddAds(
                    title: 'خدمات',
                    img:
                        'https://icon-library.com/images/hand-shake-icon-png/hand-shake-icon-png-4.jpg'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {},
                child: Row_AddAds(
                    title: 'مربوط به خانه',
                    img:
                        'https://cdn1.iconfinder.com/data/icons/exterior-interior/32/table-lamp-512.png'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {},
                child: Row_AddAds(
                    title: 'وسایل شخصی',
                    img:
                        'https://pics.freeicons.io/uploads/icons/png/20423739621548243702-512.png'),
              ),
              Line_Ads(),
              InkWell(
                onTap: () {},
                child: Row_AddAds(
                    title: 'برای کسب و کار',
                    img: 'https://img.icons8.com/ios/452/business.png'),
              ),
              Line_Ads(),
            ],
          ),
        ),
      ),
    );
  }
}
