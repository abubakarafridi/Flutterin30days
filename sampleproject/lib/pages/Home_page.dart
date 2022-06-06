// ignore_for_file: file_names

import'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  final int days = 30;
  final String name = "codekajura";

  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text('Welcome $days to flutter by $name'),
      ),
      drawer: const Drawer(),
    );
  }
}
