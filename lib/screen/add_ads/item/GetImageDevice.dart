import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_divar/screen/add_ads/item/AddAds_Pic.dart';
import 'package:flutter_divar/screen/add_ads/item/Add_Image.dart';
import 'package:image_picker/image_picker.dart';
import 'AddAds_AddImage1.dart';
import 'AddAds_AddImage2.dart';

class GetImageDevice extends StatefulWidget {
  @override
  _GetImageDeviceState createState() => _GetImageDeviceState();
}

class _GetImageDeviceState extends State<GetImageDevice> {
  File? _image;

  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                          ),
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                final pickedImage = await picker.getImage(
                                    source: ImageSource.camera);
                                setState(() {
                                  if (pickedImage != null) {
                                    _image = File(pickedImage.path);
                                  } else {
                                    print('no image select');
                                  }
                                });

                                Navigator.pop(context);
                              },
                              child: AddAds_Pic(
                                text: 'دوربین',
                                icon: Icons.camera,
                              ),
                            ),
                            SizedBox(width: 45),
                            InkWell(
                              onTap: () async {
                                final pickedImage = await picker.getImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  if (pickedImage != null) {
                                    _image = File(pickedImage.path);
                                  } else {
                                    print('no image select');
                                  }
                                });

                                Navigator.pop(context);
                              },
                              child: AddAds_Pic(
                                icon: Icons.folder_rounded,
                                text: 'گالری',
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: AddAds_AddImage1(),
              ),
              _image == null
                  ? Add_Image()
                  : Image.file(
                      _image!,
                      width: 100,
                      height: 100,
                    ),
            ],
          ),
          AddAds_AddImage2(),
          AddAds_AddImage2(),
        ],
      ),
    );
  }
}
