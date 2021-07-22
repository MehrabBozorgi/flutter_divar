import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/setting/signup_screen2.dart';
import 'package:flutter_divar/widget/kConst.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String number = '';

  final signUpKey = GlobalKey<FormState>();

  TextEditingController numberController = TextEditingController();

  saveNamePref(String number) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('number', number);
  }

  void save() {
    String number = numberController.text;
    saveNamePref(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ورود به حساب کاربری',
          style: kInfoRow,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Form(
        //key: signUpKey,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                'شماره موبایل خود را وارد کنید',
                style: kInfoRow2,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10, left: 30),
              width: double.infinity,
              child: Text(
                'برای استفاده از امکانات دیوار لطفا شماره موبایل خود را وارد کنید'
                '.کد تایید به این شماره پیامک خواهد شد.',
                style: kInfoTozihat2,
              ),
            ),
            Container(
              color: Theme.of(context).cardColor,
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
              child: TextFormField(
                controller: numberController,
                cursorColor: Colors.red[900],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  errorStyle: kInfoTozihat,
                  labelStyle: kInfoRow,
                  counterText: '',
                  border: kTextFormNumberStyle,
                ),
                maxLength: 11,
                textAlign: TextAlign.left,
                // onSaved: (value) {
                //   number = value!;
                // },
                validator: (value) {
                  if (value!.trim().isEmpty && value.trim().length <= 10) {
                    return 'شماره موبایل نا معتبر';
                  }
                },
              ),
            ),
            ElevatedButton(
              child: Text('get'),
              onPressed: () async {
                save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen2(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
