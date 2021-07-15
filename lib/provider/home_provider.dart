import 'package:flutter/material.dart';
import 'package:flutter_divar/model/home_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeProvider extends ChangeNotifier {
  List<HomeModel> _items = [];

  List<HomeModel> get items => _items;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'home.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<HomeModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = HomeModel.fromJson(data[i]);
      loaded.add(result);
    }
    _items = loaded;
    notifyListeners();
  }
}
