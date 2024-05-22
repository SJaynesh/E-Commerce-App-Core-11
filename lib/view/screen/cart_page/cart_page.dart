import 'package:e_commerce_app/utills/product/products.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart Page",
          style: TextStyle(
            fontSize: textScaler.scale(18),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...cartList.map(
              (e) => Container(
                height: h * 0.1,
                width: w,
                margin: const EdgeInsets.all(5),
                color: Colors.brown.withOpacity(0.5),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: h * 0.07,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(e['thumbnail']),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(e['title']),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
