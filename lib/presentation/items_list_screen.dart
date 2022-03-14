import 'package:flutter/material.dart';

import '../constants.dart';

class ItemsListScreen extends StatelessWidget {
  final ValueChanged<String> onItemTapped ;
  final ValueChanged<String> onRouteTapped ;

  const ItemsListScreen({Key? key, required this.onItemTapped, required this.onRouteTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item List'),
        actions: [
          IconButton(
            onPressed: () => onRouteTapped(cartRoute),
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          onTap: ()=>onItemTapped('Item $index'),
          title: Text('Item $index'),
        ),
        itemCount: 10,
      ),
    );
  }
}
