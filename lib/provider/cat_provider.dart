import 'package:flutter/material.dart';
import 'package:flutter_divar/model/cat_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatProvider extends ChangeNotifier {
  List<CatModel> _item = [];

  List<CatModel> get items => _item;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'cat.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));

    List<CatModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = CatModel.fromJson(data[i]);
      loaded.add(result);
    }
    _item = loaded;
    notifyListeners();
  }
}
