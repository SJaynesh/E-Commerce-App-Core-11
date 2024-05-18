import 'dart:developer';

import 'package:flutter/material.dart';

String cat = "All";

Widget myCategory({
  required String category,
  required TextScaler textScale,
  required Function() setState,
}) {
  return GestureDetector(
    onTap: () {
      cat = category;
      setState();
      log("Category : $cat");
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: (cat == category) ? Colors.brown : Colors.transparent,
        border: Border.all(
          color: (cat == category) ? Colors.transparent : Colors.grey.shade300,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        category.replaceFirst(
          category[0],
          category[0].toUpperCase(),
        ),
        style: TextStyle(
          fontSize: textScale.scale(18),
          letterSpacing: 0.6,
          color: (cat == category) ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}
