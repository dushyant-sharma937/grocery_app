import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_provider.dart';
import '../providers/product_provider.dart';
import '../widgets/homescreen_category_tile.dart';
import '../widgets/homescreen_drawer.dart';
import '../widgets/homescreen_searchBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Grocery App"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                // profile section
              },
              iconSize: 30,
              icon: const Icon(Icons.person)),
        ],
      ),
      drawer: const HomeScreenDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            const CustomSearchBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                  ),
                  itemCount: categoryProvider.categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    final category = categoryProvider.categories[index];
                    return CategoryTile(
                        category: category, productProvider: productProvider);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
