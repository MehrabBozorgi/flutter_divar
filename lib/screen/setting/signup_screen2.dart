import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen2 extends StatefulWidget {
  @override
  _SignUpScreen2State createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  Future<String> getNamePref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String number = pref.getString('number').toString();
    return number;
  }

  String _number = '';

  void updateName(String number) {
    setState(() {
      this._number = number;
    });
  }

  @override
  void initState() {
    getNamePref().then(updateName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _number,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
