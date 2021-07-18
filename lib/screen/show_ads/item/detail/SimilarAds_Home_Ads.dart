import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/home_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class SimilarAds_Home_Ads extends StatelessWidget {
  const SimilarAds_Home_Ads({
    required this.home_provider,
  });

  final HomeProvider home_provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: home_provider.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    home_provider.items[index].img,
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100,
                  height: 25,
                  child: Text(
                    home_provider.items[index].title,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: kInfoRow,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    'ساخت ' + home_provider.items[index].sakht.toString(),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: kInfoTozihat2,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    home_provider.items[index].price,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: kInfoTozihat2,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
