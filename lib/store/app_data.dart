import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  var selectedTab = 0;
  var selectedProductSize = -1;

  final List<String> navList = const ['All', 'Adidas', 'Nike', 'Bata'];

  final globalProducts = [
    {
      'id': '0',
      'title': 'Men\'s Nike Shoes',
      'price': 44.52,
      'imageUrl': 'assets/images/shoes_1.png',
      'company': 'Nike',
      'sizes': [9, 10, 11, 12],
    },
    {
      'id': '1',
      'title': 'Addidas Shoes',
      'price': 20.12,
      'imageUrl': 'assets/images/shoes_2.png',
      'company': 'Addidas',
      'sizes': [9, 10, 12],
    },
    {
      'id': '2',
      'title': 'Bata Women\'s Shoes',
      'price': 28.95,
      'imageUrl': 'assets/images/shoes_3.png',
      'company': 'Bata',
      'sizes': [8, 9, 10],
    },
    {
      'id': '3',
      'title': 'Jordan Shoes',
      'price': 420.69,
      'imageUrl': 'assets/images/shoes_4.png',
      'company': 'Nike',
      'sizes': [8, 9, 10],
    },
  ];
}
