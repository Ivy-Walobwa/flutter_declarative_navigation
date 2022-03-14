import 'package:flutter/material.dart';

import '../router/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ShopListRouterDelegate routerDelegate = ShopListRouterDelegate();
  ShopListRouterInformationParser routerInformationParser = ShopListRouterInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: routerInformationParser,

    );
  }


}
