import 'package:flutter/material.dart';
import 'package:sampleproject/Home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30; 
    String name = "codekajura";

    return MaterialApp(
      home:homePage(),
    );
  }
}
