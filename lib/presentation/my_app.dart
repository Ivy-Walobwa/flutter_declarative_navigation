import 'package:flutter/material.dart';
import 'package:fluttter_nav2/presentation/items_list_screen.dart';

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
        pages: [],
        onPopPage: (route, result)=>route.didPop(result),
      ),
    );
  }
}