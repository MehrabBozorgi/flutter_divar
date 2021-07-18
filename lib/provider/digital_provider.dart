import 'package:flutter/material.dart';
import 'package:flutter_divar/model/digital_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DigitalProvider extends ChangeNotifier {
  List<DigitalModel> _items = [];

  List<DigitalModel> get items => _items;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'digital.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<DigitalModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = DigitalModel.fromJson(data[i]);
      loaded.add(result);
    }
    _items = loaded;
    notifyListeners();
  }
}
