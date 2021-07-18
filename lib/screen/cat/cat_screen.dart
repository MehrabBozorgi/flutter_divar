import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/cat_provider.dart';
import 'package:flutter_divar/screen/show_ads/item/cat_bar/CatBar.dart';
import 'package:provider/provider.dart';

class CatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var catProvider = Provider.of<CatProvider>(context, listen: false);
    catProvider.fetchData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'دسته بندی آگهی ها',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'normal',
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatBar(catProvider),
          ],
        ),
      ),
    );
  }
}
