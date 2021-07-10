import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/add_ads_home_Provider.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/provider/car_provider.dart';
import 'package:flutter_divar/provider/cat_provider.dart';
import 'package:flutter_divar/provider/digital_provider.dart';
import 'package:flutter_divar/provider/home_provider.dart';
import 'package:flutter_divar/provider/theme_changer.dart';
import 'package:flutter_divar/provider/work_provider.dart';
import 'package:flutter_divar/screen/main_screen2.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeChanger(
            ThemeData.light().copyWith(
              primaryColor: Colors.grey[500],
              scaffoldBackgroundColor: Colors.grey[200],
              cardColor: Colors.grey[300],
              buttonColor: Colors.red[900],
              accentColor: Colors.grey[800],
            ),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => CatProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AllProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WorkProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DigitalProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddAdsHomeProvider(),
        ),
      ],
      child: MaterialAppWidget(),
    );
  }
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('fa'), // Farsi
      ],
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: SafeArea(
        child: MainScreen2(),
      ),
    );
  }
}
