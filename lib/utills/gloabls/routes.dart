import 'package:flutter/material.dart';

import '../../view/screen/home_page/home_page.dart';

class Routes {
  static String home_page = '/';
  static String detail_page = 'detail_page';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const HomePage()
  };
}
