import 'package:flutter/material.dart';
import 'package:flutter_divar/model/car_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AddAdsCarProvider extends ChangeNotifier {
  List<CarModel> _item = [];

  List<CarModel> get items => _item;

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
  ) async {
    var response = await http
        .post(Uri.parse('http://192.168.1.50/divar/add_ads_car.php'), body: {
      'title': value1,
      'img': value2,
      'price': value3,
      'kar_kard': value4,
      'sakht': value5,
      'berand': value6,
      'tozihat': value7,
      'shahr': value8,
      'ostan': value9,
      'number': value10,
    });

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<CarModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = CarModel.fromJson(data[i]);
      loaded.add(result);
    }
    _item = loaded;
    notifyListeners();
  }
}
