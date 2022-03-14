import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  final String item;
  const ItemDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Detail'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              item,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
           Text('$item Details')
        ],
      ),
    );
  }
}
