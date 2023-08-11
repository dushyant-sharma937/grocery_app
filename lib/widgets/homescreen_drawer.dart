import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 170,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hello, User',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.location_pin),
                      const SizedBox(width: 5),
                      const Text(
                        "Address\nAddress",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Handle Home tap
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Account'),
            onTap: () {
              // Handle Account tap
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('My List'),
            onTap: () {
              // Handle My List tap
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Shop By Category'),
            onTap: () {
              // Handle Shop By Category tap
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Offers'),
            onTap: () {
              // Handle Offers tap
            },
          ),
        ],
      ),
    );
  }
}
