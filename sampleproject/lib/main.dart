
import 'package:flutter/material.dart';
import 'package:sampleproject/pages/Home_page.dart';
import 'package:sampleproject/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sampleproject/utitily/routes.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
        debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        ),
         initialRoute: MyRoutes.homeRoute,
        routes: {
          MyRoutes.loginRoute :(context) => const LoginPage(),
          MyRoutes.homeRoute:(context) => const homePage(),
          
        }, 
);
  }
}
