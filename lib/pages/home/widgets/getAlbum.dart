import 'package:flutter/material.dart';
import 'package:tikTokClone/theme/colors.dart';

Widget getAlbum(image) {
  return Container(
    width: 55,
    height: 55,
    child: Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: black,
          ),
        ),
        Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
          ),
        ),
      ],
    ),
  );
}
