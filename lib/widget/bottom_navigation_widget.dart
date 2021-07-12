import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_divar/widget/divar_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'kConst.dart';

class kWidgets {
  static List<PersistentBottomNavBarItem> getItems2() {
    return [
      PersistentBottomNavBarItem(
        title: 'آگهی ها',
        textStyle: kInfoTozihat3,
        icon: Icon(Divar.divar, size: 20),
        activeColorPrimary: Color(0xFFB71C1C),
        inactiveColorPrimary: Colors.grey[800],
      ),
      PersistentBottomNavBarItem(
        title: 'دسته ها',
        textStyle: kInfoTozihat3,
        icon: Icon(Icons.format_list_bulleted_rounded, size: 20),
        activeColorPrimary: Color(0xFFB71C1C),
        inactiveColorPrimary: Colors.grey[800],
      ),
      PersistentBottomNavBarItem(
        title: 'ثبت آگهی',
        icon: Icon(Icons.add_circle, size: 20),
        activeColorPrimary: Color(0xFFB71C1C),
        inactiveColorPrimary: Colors.grey[800],
        textStyle: kInfoTozihat3,
      ),
      PersistentBottomNavBarItem(
        title: 'دیوار من',
        icon: Icon(Icons.person, size: 20),
        activeColorPrimary: Color(0xFFB71C1C),
        inactiveColorPrimary: Colors.grey[800],
        textStyle: kInfoTozihat3,
      ),
    ];
  }
}
