import 'package:flutter/material.dart';
import 'package:sampleproject/pages/Home_page.dart';
import 'package:sampleproject/pages/login_page.dart';

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
        primarySwatch: Colors.grey
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        ),
        initialRoute: "/home",
        routes: {
          "/" :(context) => loginpage(),
          "/home":(context) => homePage(),
          "/login":(context) => loginpage()
        }, 
);
  }
}
