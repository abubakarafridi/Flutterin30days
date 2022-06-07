// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sampleproject/models/catalogapp.dart';
import 'package:sampleproject/widget/drawer.dart';

import '../widget/item_widget.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  final int days = 30;
  final String name = "codekajura";

  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummylist[index],
            );
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
