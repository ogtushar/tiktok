import 'package:flutter/material.dart';
import 'package:tikTokClone/theme/colors.dart';

Widget homePageHeader(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Following",
        style: TextStyle(
          color: white.withOpacity(0.5),
          fontSize: 18,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        "|",
        style: TextStyle(
          color: white.withOpacity(0.3),
          fontSize: 18,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        "For You",
        style: TextStyle(
          color: white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
