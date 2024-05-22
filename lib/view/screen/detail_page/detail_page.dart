import 'dart:developer';

import 'package:e_commerce_app/utills/product/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pro =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.55,
              width: w,
              color: const Color(0xffeee5db),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Text(
                        "Product Details",
                        style: TextStyle(
                          fontSize: textScaler.scale(22),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // if (isLike == true) {
                          //   isLike = false;
                          // } else {
                          //   isLike = true;
                          // }

                          isLike = !isLike;
                          setState(() {});
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: (isLike)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.brown,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: h * 0.35,
                        width: w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(pro['thumbnail']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: h * 0.1,
                        width: w,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...pro['images'].map(
                                (e) => Container(
                                  height: h * 0.08,
                                  width: w * 0.18,
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                      color: Colors.brown.withOpacity(0.5),
                                      width: 2.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pro['title'],
                    style: TextStyle(
                      fontSize: textScaler.scale(25),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Text(
                    "Product Details",
                    style: TextStyle(
                      fontSize: textScaler.scale(22),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Text(
                    pro['description'],
                    style: TextStyle(
                      fontSize: textScaler.scale(16),
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  // RatingBar.builder(
                  //   itemBuilder: (context, _) => const Icon(
                  //     Icons.star,
                  //     color: Colors.amber,
                  //   ),
                  //   allowHalfRating: true,
                  //   direction: Axis.horizontal,
                  //   itemCount: 5,
                  //   onRatingUpdate: (rating) {
                  //     log("Rating: $rating");
                  //   },
                  // ),
                  RatingBarIndicator(
                    rating: pro['rating'],
                    itemSize: 20,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: h * 0.13,
              width: w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 1.8,
                  ),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "\$ ${pro['price']}.00",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        if (!cartList.contains(pro)) {
                          cartList.add(pro);
                        }

                        log("Cart List : $cartList");
                      },
                      child: Container(
                        height: h * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "🛍 Add to Cart",
                          style: TextStyle(
                            fontSize: textScaler.scale(20),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
