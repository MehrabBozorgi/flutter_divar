import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/car_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class SimilarAds_Car_Ads extends StatelessWidget {
  const SimilarAds_Car_Ads({required this.car_provider});

  final CarProvider car_provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: car_provider.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    car_provider.items[index].img,
                    width: 100,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 100,
                  height: 25,
                  child: Text(
                    car_provider.items[index].title,
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: kInfoRow,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    'ساخت ' + car_provider.items[index].sakht.toString(),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    style: kInfoTozihat2,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    car_provider.items[index].price,
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
