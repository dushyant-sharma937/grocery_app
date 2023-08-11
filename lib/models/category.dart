import 'package:flutter/material.dart';

class Category {
  String name;
  IconData categoryIcon;
  final List<int> productIds;

  Category(
      {required this.name,
      required this.categoryIcon,
      required this.productIds});
}
