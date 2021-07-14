import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';
import 'package:share/share.dart';

class Kebab_Share_Ads extends StatelessWidget {
  const Kebab_Share_Ads({required this.provider, required this.index});

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        'kebab_vertical.png',
        width: 20,
        height: 20,
        fit: BoxFit.cover,
        color: Colors.white,
      ),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              width: double.infinity,
              height: 100,
              child: Column(
                children: [
                  Center(
                    child: Icon(
                      Icons.arrow_drop_up_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        Share.share(
                          provider.items[index].title,
                          subject: provider.items[index].price,
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.share),
                          SizedBox(width: 10),
                          Text(
                            'اشتراک گذاری',
                            style: kInfoRow,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
