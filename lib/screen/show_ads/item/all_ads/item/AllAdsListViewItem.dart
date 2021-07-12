import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';

class AllAdsListViewItem extends StatelessWidget {
  const AllAdsListViewItem({required this.allProvider, required this.index});

  final AllProvider allProvider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 210,
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  allProvider.items[index].title,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'normal',
                    fontSize: 14,
                  ),
                ),
              ),
              Container(
                width: 210,
                child: Text(
                  allProvider.items[index].price,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'normal',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                width: 210,
                child: allProvider.items[index].metr_price.isNotEmpty
                    ? Text(
                        'ودیعه : ' + allProvider.items[index].metr_price,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'normal',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )
                    : null,
              ),
              Container(
                width: 210,
                margin: EdgeInsets.only(bottom: 5),
                //color: Colors.yellow,
                child: Text(
                  'زمان انتشار : ' + allProvider.items[index].zaman_enteshar,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'normal', fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
          allProvider.items[index].img.isNotEmpty
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    allProvider.items[index].img,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'no_image.png',
                    color: Colors.grey,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
        ],
      ),
    );
  }
}
