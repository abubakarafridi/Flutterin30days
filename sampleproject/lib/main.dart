
import 'package:flutter/material.dart';
import 'package:sampleproject/core/store.dart';
import 'package:sampleproject/pages/cart_page.dart';
import 'package:sampleproject/pages/login_page.dart';
import 'package:sampleproject/utitily/routes.dart';
import 'package:sampleproject/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';


void main() {

  runApp(VxState(store: MyStore(), child: MyApp()));

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
