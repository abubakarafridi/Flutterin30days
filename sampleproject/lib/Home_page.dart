import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  final int days = 30;
  final String name = "codekajura";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome $days to flutter by $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
