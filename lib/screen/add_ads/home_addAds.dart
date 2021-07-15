import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/add_ads_home_Provider.dart';
import '../show_ads/item/detail/tozihat_title.dart';
import 'package:flutter_divar/widget/kConst.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'item/AddAds_AppBar_Action.dart';
import 'item/AddAds_AppBar_Leading.dart';
import 'item/AddAds_Guide.dart';
import 'item/AddAds_ImageText1.dart';
import 'item/AddAds_ImageText2.dart';
import 'item/AddAds_titleOne.dart';
import 'item/Add_Ads_Button.dart';
import 'item/GetImageDevice.dart';
import 'item/Line_AddAds.dart';

class Home_addAds extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  String _shahr = '';
  String _ostan = '';
  String _title = '';
  String _metr_price = '';
  String _agahi_dahande = '';
  String _number = '';
  String _tozihat = '';
  String _price = '';
  String _img = '';
  String _sakht = '';
  String _otagh = '';
  String _metr = '';
  String _tabaghe = '';

  File? _image;
  final picker = ImagePicker();

  Future getImageFromCamera() async {
    final pickedImage = await picker.getImage(source: ImageSource.camera);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
    } else {
      print('no image select');
    }
  }

  Future getImageFromGallery() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      _image = File(pickedImage.path);
    } else {
      print('no image select');
    }
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AddAdsHomeProvider>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ثبت آگهی',
            style: kButton,
          ),
          backgroundColor: Colors.grey[700],
          automaticallyImplyLeading: false,
          leading: AddAds_AppBar_Leading(),
          actions: [
            AddAds_AppBar_Action(),
          ],
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AddAds_Guide(),
                LineAddAds(),
                TozihatTitle(text: 'مشخصات کلی'),
                AddAds_titleOne(text_left: 'املاک', text_right: 'دسته بندی'),
                textFormFieldWidgets(),
                LineAddAds(),
                AddAds_ImageText1(),
                AddAds_ImageText2(),
                GetImageDevice(),
                textFormFieldTitleAndDesc(context),
                Add_Ads_Button(
                  formKey: formKey,
                  provider: provider,
                  title: _title,
                  img: _img,
                  price: _price,
                  metr_price: _metr_price,
                  sakht: _sakht,
                  metr: _metr,
                  otagh: _otagh,
                  agahi_dahande: _agahi_dahande,
                  tabaghe: _tabaghe,
                  tozihat: _tozihat,
                  shahr: _shahr,
                  ostan: _ostan,
                  number: _number,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  textFormFieldTitleAndDesc(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10, right: 15),
              width: double.infinity,
              child: Text(
                'عنوان آگهی',
                style: kTimeStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                'در عنوان آگهی به موارد مهمی مانند نوع ملک، متراژ و محله اشاره کنید',
                style: kInfoTozihat2,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'مثال: آپارتمان، ولیعصر',
                    hintStyle: kInfoRow,
                    errorStyle: kInfoTozihat,
                    border: InputBorder.none,
                    counterText: ''),
                maxLength: 75,
                minLines: 1,
                textAlign: TextAlign.right,
                onSaved: (value) {
                  _title = value!;
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'این مورد را تکمیل کنید';
                  }
                  if (value.trim().length <= 6) {
                    return 'مشکل در تعداد حروف';
                  }
                },
              ),
            ),
          ],
        ),
        LineAddAds(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10, right: 15),
              width: double.infinity,
              child: Text(
                'آگهی توضیحات',
                style: kTimeStyle2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'در توضیحات آگهی به مواردی مانند شرایط اجاره، جزئیات و ویژگی‌های قابل توجه، دسترسی‌های محلی و موقعیت قرارگیری ملک اشاره کنید',
                style: kInfoTozihat2,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'توضیحات خود را بنویسید.',
                    hintStyle: kInfoRow,
                    errorStyle: kInfoTozihat,
                    border: InputBorder.none,
                    counterText: ''),
                maxLines: 6,
                maxLength: 500,
                minLines: 3,
                textAlign: TextAlign.right,
                onSaved: (value) {
                  _tozihat = value!;
                },
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'این مورد را تکمیل کنید';
                  }
                  if (value.length <= 9) {
                    return 'مشکل در تعداد حروف';
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  textFormFieldWidgets() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('محدوده آگهی', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 30,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'انتخواب',
                    errorStyle: kInfoTozihat,
                    border: InputBorder.none,
                    hintStyle: kInfoRow,
                    counterText: '',
                  ),
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _ostan = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 2) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('شهر', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 25,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _shahr = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 4) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          TozihatTitle(text: 'ویژگی ها'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('قیمت', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 12,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _price = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 7) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('اجاره', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 9,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _metr_price = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 6) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('آگهی دهنده', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 15,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _agahi_dahande = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 3) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('تعداد اتاق', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _otagh = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('سال ساخت', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _sakht = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 3) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('طبقه', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _tabaghe = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('متراژ', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 7,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'تعیین',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _metr = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 2) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
          LineAddAds(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('شماره همراه', style: kInfoRow),
              Container(
                width: 110,
                child: TextFormField(
                  maxLength: 11,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'انتخواب',
                      errorStyle: kInfoTozihat,
                      border: InputBorder.none,
                      hintStyle: kInfoRow,
                      counterText: ''),
                  // maxLength: number,
                  textAlign: TextAlign.center,
                  onSaved: (value) {
                    _number = value!;
                  },
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return 'این مورد را تکمیل کنید';
                    }
                    if (value.trim().length <= 10) {
                      return 'مشکل در تعداد حروف';
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
