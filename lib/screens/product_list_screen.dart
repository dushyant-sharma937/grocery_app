import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/homescreen_searchBar.dart';

import '../models/category.dart';
import '../models/product.dart';
import '../widgets/productscreen_product_tile.dart';

class ProductListScreen extends StatefulWidget {
  final Category category;
  final List<Product> products;

  const ProductListScreen(this.category, this.products, {super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products - ${widget.category.name}'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isSearch = !isSearch;
                });
              },
              iconSize: 30,
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          if (isSearch) const CustomSearchBar(),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: widget.products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = widget.products[index];
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
