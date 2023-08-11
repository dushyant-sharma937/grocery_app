import 'package:flutter/material.dart';

import '../models/category.dart';
import '../providers/product_provider.dart';
import '../screens/product_list_screen.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
    required this.productProvider,
  });

  final Category category;
  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductListScreen(
                category,
                productProvider
                    .products), // Pass the selected category and products
          ),
        );
      },
      child: Card(
        elevation: 2,
        color: const Color.fromRGBO(246, 255, 247, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(category.categoryIcon),
            const SizedBox(height: 8.0),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
