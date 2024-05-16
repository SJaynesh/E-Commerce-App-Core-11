import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utills/product/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";
  @override
  void initState() {
    super.initState();
    category.insert(0, "All");
    log("Category : $category");
  }

  @override
  Widget build(BuildContext context) {
    TextScaler textScale = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.045,
            ),
            // Location
            Text(
              "Location",
              style: TextStyle(
                fontSize: textScale.scale(14),
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            // icon with city
            Row(
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: const Color(0xff5c3d2a),
                  size: h * 0.03,
                ),
                Text(
                  "New York, USA",
                  style: TextStyle(
                    fontSize: textScale.scale(17),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: 1,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: h * 0.03,
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(Icons.notifications),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            // search bar
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: h * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.brown,
                          size: h * 0.036,
                        ),
                        SizedBox(
                          width: w * 0.02,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: textScale.scale(18),
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: h * 0.065,
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff5c3d2a),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.tune,
                      size: h * 0.033,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            // discount container
            Container(
              height: h * 0.22,
              width: w,
              decoration: BoxDecoration(
                color: const Color(0xffe9e1d7),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Collection",
                              style: TextStyle(
                                fontSize: textScale.scale(24),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.006,
                            ),
                            Text(
                              "Discount 50% for\nthe first transaction",
                              style: TextStyle(
                                fontSize: textScale.scale(16),
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Container(
                              height: h * 0.04,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Shop Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textScale.scale(15),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Transform.scale(
                          scaleX: 2,
                          scaleY: 1.75,
                          child: Image.asset(
                            "assets/images/home_page/discount.png",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * 0.015,
            ),
            // dot
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 15,
                ),
                CircleAvatar(
                  radius: w * 0.015,
                  backgroundColor: const Color(0xffEEEEED),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: w * 0.015,
                  backgroundColor: const Color(0xffEEEEED),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: w * 0.018,
                  backgroundColor: Colors.brown,
                ),
                const Spacer(),
                CircleAvatar(
                  radius: w * 0.015,
                  backgroundColor: const Color(0xffEEEEED),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: w * 0.015,
                  backgroundColor: const Color(0xffEEEEED),
                ),
                const Spacer(
                  flex: 15,
                ),
              ],
            ),
            SizedBox(
              height: h * 0.015,
            ),
            // category
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: textScale.scale(22),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: textScale.scale(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.015,
            ),
            Row(
              children: [
                ...subCategory
                    .map(
                      (e) => mySubCategory(
                        image: e['icon'],
                        name: e['text'],
                        context: context,
                      ),
                    )
                    .toList(),
              ],
            ),
            SizedBox(
              height: h * 0.015,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...category
                      .map(
                        (e) => myCategory(textScale: textScale, cname: e),
                      )
                      .toList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget mySubCategory({
    required BuildContext context,
    required String image,
    required String name,
  }) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: w * 0.08,
            backgroundColor: const Color(0xfff7f2ed),
            child: Image.asset(
              image,
              height: 50,
            ),
          ),
          SizedBox(
            height: h * 0.015,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: textScaler.scale(16),
              letterSpacing: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget myCategory({
    required TextScaler textScale,
    required String cname,
  }) {
    return GestureDetector(
      onTap: () {
        cat = cname;
        log("Button name $cat");
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: (cat == cname) ? Colors.brown : Colors.transparent,
          border: Border.all(
            color: (cat == cname) ? Colors.transparent : Colors.grey.shade300,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
        child: Text(
          cname.replaceFirst(
            cname[0],
            cname[0].toUpperCase(),
          ),
          style: TextStyle(
            fontSize: textScale.scale(20),
            color: (cat == cname) ? Colors.white : Colors.black,
            fontWeight: (cat == cname) ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}