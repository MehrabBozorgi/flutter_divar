import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';

class Image_Ads extends StatelessWidget {
  const Image_Ads({required this.provider, required this.index});

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return provider.items[index].img.isNotEmpty
        ? Image.network(
            provider.items[index].img,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          )
        : SizedBox(height: 100);
  }
}
