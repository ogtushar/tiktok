import 'package:flutter/material.dart';
import 'package:tikTokClone/pages/utils/uploadIcon.dart';
import 'package:tikTokClone/theme/colors.dart';

import '../../global.dart';

Widget getFooter(BuildContext context, Function selectedIndex, int selected) {
  var _size = MediaQuery.of(context).size;
  double _hblock = _size.height / 100;
  return Container(
    width: _size.width,
    height: _hblock * 8,
    decoration: BoxDecoration(
      color: appBgColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        bottomItems.length,
        (index) => bottomItems[index]["isIcon"]
            ? InkWell(
                onTap: () => selectedIndex(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 2,
                    ),
                    Icon(bottomItems[index]["icon"], color: white),
                    SizedBox(height: _hblock),
                    Text(
                      bottomItems[index]["label"],
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  ],
                ),
              )
            : InkWell(
                onTap: () => selectedIndex(index),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UploadIcon(),
                ),
              ),
      ),
    ),
  );
}
