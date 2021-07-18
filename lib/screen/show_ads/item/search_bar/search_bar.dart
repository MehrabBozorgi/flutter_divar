import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: TextField(
                style: TextStyle(
                  fontFamily: 'normal',
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: 'جستجو در همه آگهی',
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontFamily: 'normal',
                    fontSize: 16,
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: DropdownButton(
                icon: Icon(Icons.location_on_outlined),
                hint: Text(
                  'همه شهرها',
                  style: TextStyle(
                    fontFamily: 'normal',
                    fontSize: 12,
                    color: Colors.grey[800],
                  ),
                ),
                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
