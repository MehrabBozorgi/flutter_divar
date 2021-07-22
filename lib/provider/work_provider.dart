import 'package:flutter/material.dart';
import 'package:flutter_divar/model/work_model.dart';
import 'package:flutter_divar/widget/app_data.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorkProvider extends ChangeNotifier {
  List<WorkModel> _items = [];

  List<WorkModel> get items => _items;

  Future fetchData() async {
    var response = await http.get(Uri.parse(AppData.url + 'work.php'));

    List data = jsonDecode(utf8.decode(response.bodyBytes));
    List<WorkModel> loaded = [];

    for (int i = 0; i < data.length; i++) {
      var result = WorkModel.fromJson(data[i]);
      loaded.add(result);
    }
    _items = loaded;
    notifyListeners();
  }
}
