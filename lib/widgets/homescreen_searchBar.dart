import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 5),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.arrow_forward),
                alignLabelWithHint: true,
              ),
              autofocus: false,
              onSaved: (value) {
                // handle the search
              },
            ),
          ),
        ],
      ),
    );
  }
}
