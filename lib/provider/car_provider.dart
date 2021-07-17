import 'package:flutter/material.dart';
import 'package:flutter_divar/model/car_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CarProvider extends ChangeNotifier {
  List<CarModel> _items = [];

  List<CarModel> get items => _items;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'car.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<CarModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = CarModel.fromJson(data[i]);
      loaded.add(result);
    }
    _items = loaded;
    notifyListeners();
  }
}
