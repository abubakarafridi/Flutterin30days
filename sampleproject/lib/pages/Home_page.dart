// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sampleproject/models/catalogapp.dart';
import 'package:sampleproject/widget/drawer.dart';

import '../widget/item_widget.dart';

// ignore: camel_case_types
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final int days = 30;

  final String name = "codekajura";

  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    var CatalogJson = await rootBundle.loadString("assets/files/Catalog.json");
    var decodedData = jsonDecode(CatalogJson);
    var productsdata = decodedData["products"];
    CatalogModel.items = List.from(productsdata).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
