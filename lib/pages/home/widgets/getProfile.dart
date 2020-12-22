import 'package:flutter/material.dart';
import 'package:tikTokClone/theme/colors.dart';

Widget getProfile(image) {
  return Container(
    width: 55,
    height: 60,
    child: Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: white),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: white,
                size: 15,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
