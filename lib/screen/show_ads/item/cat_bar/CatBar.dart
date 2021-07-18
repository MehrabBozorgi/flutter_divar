import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/cat_provider.dart';
import 'package:flutter_divar/screen/cat/CatDetail_Car.dart';
import 'package:flutter_divar/screen/cat/CatDetail_Digital.dart';
import 'package:flutter_divar/screen/cat/CatDetail_Home.dart';
import 'package:flutter_divar/screen/cat/CatDetail_Work.dart';
import 'package:flutter_divar/widget/line_ads.dart';

class CatBar extends StatelessWidget {
  const CatBar(this.catProvider);

  final CatProvider catProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: catProvider.items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (catProvider.items[index].cat_id == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CatDetail_Home(),
                  ),
                );
              } else if (catProvider.items[index].cat_id == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CatDetail_Car(),
                  ),
                );
              } else if (catProvider.items[index].cat_id == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CatDetail_Digital(),
                  ),
                );
              } else if (catProvider.items[index].cat_id == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CatDetail_Work(),
                  ),
                );
              }
            },
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      padding: EdgeInsets.all(15),
                      // decoration: kContainerStyle,
                      child: Image.network(
                        catProvider.items[index].img,
                        color: Colors.grey[700],
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        catProvider.items[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'normal',
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                Line_Ads(),
              ],
            ),
          );
        },
      ),
    );
  }
}
