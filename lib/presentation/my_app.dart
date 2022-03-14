import 'package:flutter/material.dart';

import 'screens.dart';
import '../constants.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _selectedItem;
  String? _selectedRoute;
  bool show404 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: [
          MaterialPage(
            key: const ValueKey('ItemListScreen'),
            child: ItemsListScreen(
              onItemTapped: _handleItemTapped,
              onRouteTapped: _handleRouteTapped,
            ),
          ),
          if (show404)
            const MaterialPage(
              key: ValueKey('Error Page'),
              child: Center(
                child: Text('404'),
              ),
            )
          else if (_selectedItem != null)
            MaterialPage(
              key: ValueKey(_selectedItem!),
              child: ItemDetailsScreen(
                item: _selectedItem!,
              ),
            )
          else if (_selectedRoute != null && _selectedRoute == cartRoute)
            MaterialPage(
              key: ValueKey(_selectedRoute!),
              child: CartScreen(
                onItemTapped: _handleItemTapped,
              ),
            )
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          if(_selectedItem != null && _selectedRoute != null){
            setState(() {
              _selectedItem = null;
            });
            return true;
          }

          setState(() {
            _selectedRoute = null;
            _selectedItem = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleItemTapped(String item) {
    setState(() {
      _selectedItem = item;
    });
  }

  void _handleRouteTapped(
    String route,
  ) {
    setState(() {
      _selectedItem = null;
      _selectedRoute = route;
    });
  }
}
