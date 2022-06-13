import 'package:flutter/material.dart';
import 'package:sampleproject/pages/Home_page.dart';
import 'package:sampleproject/pages/cart_page.dart';
import 'package:sampleproject/pages/login_page.dart';
import 'package:sampleproject/utitily/routes.dart';
import 'package:sampleproject/widget/themes.dart';

void main() {
  runApp(const myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) =>  homePage(),
        MyRoutes.CartRoute: (context) =>  CartPage(),
      },
    );
  }
}
