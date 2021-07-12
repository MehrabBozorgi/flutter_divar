import 'package:flutter/material.dart';
import 'package:flutter_divar/model/home_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddAdsHomeProvider extends ChangeNotifier {
  List<HomeModel> _item = [];

  List<HomeModel> get items => _item;

  Future fetchData(
    var value1,
    var value2,
    var value3,
    var value4,
    var value5,
    var value6,
    var value7,
    var value8,
    var value9,
    var value10,
    var value11,
    var value12,
    var value13,
  ) async {
    var response = await http
        .post(Uri.parse('http://192.168.1.50/divar/add_ads_home.php'), body: {
      'title': value1,
      'img': value2,
      'price': value3,
      'metr_price': value4,
      'sakht': value5,
      'metr': value6,
      'otagh': value7,
      'agahi_dahande': value8,
      'tabaghe': value9,
      'tozihat': value10,
      'shahr': value11,
      'ostan': value12,
      'number': value13,
    });

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<HomeModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = HomeModel.fromJson(data[i]);
      loaded.add(result);
    }
    _item = loaded;
    notifyListeners();
  }
}
