import 'package:flutter/material.dart';
import 'package:fluttter_nav2/presentation/cart_screen.dart';
import 'package:fluttter_nav2/presentation/item_details_screen.dart';

class ItemsListScreen extends StatelessWidget {
  const ItemsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const CartScreen()));
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const ItemDetailsScreen()),);
          },
          title: Text('Item $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}
