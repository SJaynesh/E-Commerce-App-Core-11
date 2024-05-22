import 'package:e_commerce_app/view/screen/cart_page/cart_page.dart';
import 'package:e_commerce_app/view/screen/detail_page/detail_page.dart';
import 'package:flutter/material.dart';

import '../../view/screen/home_page/home_page.dart';

class Routes {
  static String home_page = '/';
  static String detail_page = 'detail_page';
  static String cart_page = 'cart_page';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const HomePage(),
    detail_page: (context) => const DetailPage(),
    cart_page: (context) => const CartPage(),
  };
}
