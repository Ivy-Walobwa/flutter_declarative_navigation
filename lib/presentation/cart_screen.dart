import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final ValueChanged<String> onItemTapped ;

  const CartScreen({Key? key, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.separated(
          itemBuilder: (_, index) => ListTile(
                onTap: ()=> onItemTapped('Item ${index+index}', ),
                title:  Text('Item ${index+index}'),
                trailing: Container(
                    padding: const EdgeInsets.all(6),
                    decoration:  BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(' 1 ')),
              ),
          separatorBuilder: (ctx, idx) => const Divider(),
          itemCount: 5),
    );
  }
}
