import 'package:flutter/material.dart';
import 'package:fluttter_nav2/presentation/item_details_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.separated(
          itemBuilder: (_, index) => ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const ItemDetailsScreen()));

                },
                title: const Text('Item 0'),
                trailing: Container(
                    padding: const EdgeInsets.all(6),
                    decoration:  BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(' 1 ')),
              ),
          separatorBuilder: (ctx, idx) => const Divider(),
          itemCount: 3),
    );
  }
}
