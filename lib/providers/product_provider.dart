import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [
    Product(1, 'Product 1', 'Description for Product 1', 10.99),
    Product(2, 'Product 2', 'Description for Product 2', 15.49),
    Product(3, 'Product 3', 'Description for Product 3', 8.75),
    Product(4, 'Product 4', 'Description for Product 4', 22.99),
    // Add more products as needed
  ];

  List<Product> get products => _products;
}
