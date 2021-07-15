import 'package:fashion_ecommerce_app/Home_page.dart';
import 'package:fashion_ecommerce_app/models/cloth.dart';
import 'package:fashion_ecommerce_app/Screens/screens.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(FashionApp());
}

class FashionApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cloth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xffC3A9D8),
        ),
        home: HomePage(),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          NavScreen.routeName: (context) => NavScreen(),
          // CartScreen.routeName: (context) => CartScreen(),
          ShopScreen.routeName: (context) => ShopScreen(),
        },
      ),
    );
  }
}
