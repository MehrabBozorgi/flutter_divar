import 'package:flutter/material.dart';
import 'package:flutter_divar/provider/work_provider.dart';
import 'package:flutter_divar/screen/show_ads/item/search_bar/search_bar.dart';
import 'package:provider/provider.dart';

class CatDetail_Work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var workProvider = Provider.of<WorkProvider>(context, listen: false);
    workProvider.fetchData();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(),
              Container(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: workProvider.items.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 210,
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text(
                                    workProvider.items[index].title,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'normal',
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 210,
                                  child: Text(
                                    workProvider.items[index].price,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'normal',
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ),
                                Container(
                                  width: 210,
                                  margin: EdgeInsets.only(bottom: 5),
                                  //color: Colors.yellow,
                                  child: Text(
                                    'زمان انتشار : ' +
                                        workProvider
                                            .items[index].zaman_enteshar,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'normal',
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            workProvider.items[index].img.isNotEmpty
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      workProvider.items[index].img,
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      'no_image.png',
                                      width: 120,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
