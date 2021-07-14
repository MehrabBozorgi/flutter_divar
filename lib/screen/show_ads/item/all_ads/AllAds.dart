import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/screen/show_ads/detail_work.dart';
import '../../detail_car.dart';
import '../../detail_digital.dart';
import '../../detail_home.dart';
import 'item/AllAdsListViewItem.dart';

class AllAds extends StatelessWidget {
  const AllAds({required this.allProvider});

  final AllProvider allProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: allProvider.items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (allProvider.items[index].cat_id == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailDigital(allProvider.items[index], index),
                  ),
                );
              } else if (allProvider.items[index].cat_id == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailHome(allProvider.items[index], index),
                  ),
                );
              } else if (allProvider.items[index].cat_id == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailCar(allProvider.items[index], index),
                  ),
                );
              } else if (allProvider.items[index].cat_id == 7) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailWork(allProvider.items[index], index),
                  ),
                );
              }
            },
            child: AllAdsListViewItem(allProvider: allProvider, index: index),
          );
        },
      ),
    );
  }
}
