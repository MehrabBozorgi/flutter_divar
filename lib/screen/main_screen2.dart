import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/theme_changer.dart';
import 'package:flutter_divar/screen/setting/setting_screen.dart';
import 'package:flutter_divar/screen/show_ads/show_ads.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:flutter_divar/widget/bottom_navigation_widget.dart';
import 'add_ads/add_ads_screen.dart';
import 'cat/cat_screen.dart';

class MainScreen2 extends StatefulWidget {
  @override
  _MainScreen2State createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    ThemeChanger _themeChanger =
        Provider.of<ThemeChanger>(context, listen: false);
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: [
        ShowAdsScreen(),
        CatScreen(),
        AddAdsScreen(),
        SettingScreen(themeChanger: _themeChanger),
      ],

      items: kWidgets.getItems2(),
      confineInSafeArea: true,
      backgroundColor: Theme.of(context).cardColor,
      navBarHeight: 48,

      // Default is Colors.white.
      handleAndroidBackButtonPress: false,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: ItemAnimationProperties(
      //   // Navigation Bar's items animation properties.
      //   duration: Duration(milliseconds: 500),
      //   curve: Curves.ease,
      // ),

      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.linearToEaseOut,
        duration: Duration(milliseconds: 250),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }

  getBody2(currentIndex) {
    ThemeChanger _themeChanger =
        Provider.of<ThemeChanger>(context, listen: false);

    switch (currentIndex) {
      case 0:
        return ShowAdsScreen();
      case 1:
        return CatScreen();
      case 2:
        return AddAdsScreen();
      case 3:
        return SettingScreen(themeChanger: _themeChanger);

      default:
        return ShowAdsScreen();
    }
  }
}
