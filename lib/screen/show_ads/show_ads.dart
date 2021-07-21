import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/provider/cat_provider.dart';
import 'package:provider/provider.dart';
import 'item/all_ads/AllAds.dart';
import 'item/search_bar/search_bar.dart';

class ShowAdsScreen extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    var catProvider = Provider.of<CatProvider>(context, listen: false);
    catProvider.fetchData();
    var allProvider = Provider.of<AllProvider>(context, listen: false);
    allProvider.fetchData();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(),
              AllAds(allProvider: allProvider),
            ],
          ),
        ),
      ),
    );
  }
}
