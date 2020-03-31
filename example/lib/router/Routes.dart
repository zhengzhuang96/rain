import 'package:flutter/material.dart';
import 'package:rain_example/Index_page.dart';
import 'package:rain_example/pages/button_list.dart';
import 'package:rain_example/pages/cell_list.dart';

final routes = {
  '/': (context) => IndexPage(),
  '/buttonList': (context) => ButtonList(),
  '/cellList': (context) => CellList(),
};

var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};