import 'package:flutter/material.dart';
import 'screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigator(
        pages: const [
          MaterialPage(
            key: ValueKey('ItemListScreen'),
            child: ItemsListScreen(),
          )
        ],
        onPopPage: (route, result) => route.didPop(result),
      ),
    );
  }
}
