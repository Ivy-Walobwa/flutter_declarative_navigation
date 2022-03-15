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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color:  Color(0xff0031EA)),
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: routerInformationParser,

    );
  }


}
