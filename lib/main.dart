import 'package:shopping/models/Item.dart';
import 'package:shopping/pages/home_page.dart';
import 'package:shopping/pages/item_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/item': (context) => const ItemPage(),
    },
  ));
}
