import 'package:flutter/material.dart';
import 'package:flutter_divar/model/all_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AllProvider extends ChangeNotifier {
  List<AllModel> _items = [];

  List<AllModel> get items => _items;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'all.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));

    List<AllModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = AllModel.fromJson(data[i]);

      loaded.add(result);
    }

    _items = loaded;
    notifyListeners();
  }
}
