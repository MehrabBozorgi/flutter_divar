import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/all_provider.dart';
import 'package:flutter_divar/widget/kConst.dart';

class CallInfo_Ads extends StatelessWidget {
  const CallInfo_Ads({required this.provider, required this.index});

  final AllProvider provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: ConstrainedBox(
        constraints:
            BoxConstraints.tightFor(height: 45, width: double.infinity),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red[900]),
          child: Text('اطلاعات تماس', style: kButton),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  child: Center(
                    child: Container(
                      width: 250,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFB71C1C),
                          width: 3,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(right: 5),
                              child: Text('شماره همراه : ',
                                  textAlign: TextAlign.right,
                                  style: kInfoTozihat)),
                          SizedBox(height: 10),
                          Text(provider.items[index].number, style: kInfoRow2)
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
