import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/theme_changer.dart';

class Setting extends StatelessWidget {
  final ThemeChanger themeChanger;

  const Setting({required this.themeChanger});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              icon: Icon(
                Icons.light_mode,
                color: Theme.of(context).primaryColor,
              ),
              label: Text(
                'light',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {
                themeChanger.setTheme(
                  ThemeData.light().copyWith(
                    primaryColor: Colors.grey[300],
                    cardColor: Colors.grey[300],
                    scaffoldBackgroundColor: Colors.grey[200],
                    buttonColor: Colors.red[900],
                    accentColor: Colors.grey[800],
                  ),
                );
              },
            ),
            TextButton.icon(
              icon: Icon(
                Icons.dark_mode,
                color: Theme.of(context).primaryColor,
              ),
              label: Text(
                'dark',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {
                themeChanger.setTheme(
                  ThemeData.dark().copyWith(
                      brightness: Brightness.dark,
                      primaryColor: Colors.grey[600],
                      cardColor: Colors.grey[600],
                      buttonColor: Colors.grey[600],
                      accentColor: Colors.white),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
