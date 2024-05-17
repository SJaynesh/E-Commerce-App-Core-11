import 'package:flutter/material.dart';

Widget mySubCategory({
  required BuildContext context,
  required String image,
  required String text,
}) {
  double w = MediaQuery.of(context).size.width;
  TextScaler textScale = MediaQuery.textScalerOf(context);
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: w * 0.1,
          backgroundColor: const Color(0xfff7f2ed),
          child: Transform.scale(
            scale: 0.8,
            child: Image.asset(
              image,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: textScale.scale(18),
            height: 2.5,
          ),
        ),
      ],
    ),
  );
}
