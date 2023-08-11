import 'package:flutter/material.dart';
import 'package:grocery_app/models/category.dart';
import 'package:grocery_app/providers/product_provider.dart';

import '../models/product.dart';

class CategoryProvider extends ChangeNotifier {
  final List<Category> _categories = [
    Category(
        name: "Category 1", categoryIcon: Icons.category, productIds: [1, 2]),
    Category(
        name: "Category 2", categoryIcon: Icons.category, productIds: [3, 2]),
    Category(
        name: "Category 3", categoryIcon: Icons.category, productIds: [4, 2]),
    Category(
        name: "Category 4", categoryIcon: Icons.category, productIds: [1, 3]),
    Category(
        name: "Category 5", categoryIcon: Icons.category, productIds: [1, 4]),
    Category(
        name: "Category 6", categoryIcon: Icons.category, productIds: [1, 2]),
    Category(
        name: "Category 7", categoryIcon: Icons.category, productIds: [3, 4]),
  ];

  List<Category> get categories => _categories;

  List<Product> getProductsForCategory(Category category) {
    List<int> productIds = category.productIds;
    ProductProvider productProvider = ProductProvider();
    return productProvider.products.where((product) {
      return productIds.contains(product.id);
    }).toList();
  }
}
