import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/add_ads_home_Provider.dart';
import 'package:flutter_divar/screen/add_ads/send_add.dart';
import 'package:flutter_divar/widget/kConst.dart';

class Add_Ads_Button extends StatelessWidget {
  const Add_Ads_Button({
    required this.formKey,
    required this.provider,
    required String title,
    required String img,
    required String price,
    required String metr_price,
    required String sakht,
    required String metr,
    required String otagh,
    required String agahi_dahande,
    required String tabaghe,
    required String tozihat,
    required String shahr,
    required String ostan,
    required String number,
  })  : _title = title,
        _img = img,
        _price = price,
        _metr_price = metr_price,
        _sakht = sakht,
        _metr = metr,
        _otagh = otagh,
        _agahi_dahande = agahi_dahande,
        _tabaghe = tabaghe,
        _tozihat = tozihat,
        _shahr = shahr,
        _ostan = ostan,
        _number = number;

  final GlobalKey<FormState> formKey;
  final AddAdsHomeProvider provider;
  final String _title;
  final String _img;
  final String _price;
  final String _metr_price;
  final String _sakht;
  final String _metr;
  final String _otagh;
  final String _agahi_dahande;
  final String _tabaghe;
  final String _tozihat;
  final String _shahr;
  final String _ostan;
  final String _number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 120),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red[900],
          ),
          child: Text(
            'بعدی',
            style: kButton,
          ),
          onPressed: () async {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();

              provider.fetchData(
                _title,
                _img,
                _price,
                _metr_price,
                _sakht,
                _metr,
                _otagh,
                _agahi_dahande,
                _tabaghe,
                _tozihat,
                _shahr,
                _ostan,
                _number,
              );

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SendAds(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
