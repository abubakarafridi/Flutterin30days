import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sampleproject/pages/Home_page.dart';
import 'package:sampleproject/pages/list_page.dart';
import 'package:sampleproject/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myapp());
}

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
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        ),

        routes: {
          "/" :(context) => LoginPage(),
          "/home":(context) => homePage(),
          "/list":(context) => list()
        }, 
);
  }
}
