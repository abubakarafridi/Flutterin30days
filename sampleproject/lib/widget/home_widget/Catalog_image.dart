import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class catalogImage extends StatelessWidget {
  final String image;

  const catalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(context.canvasColor ).make().p16().w40(context);
  }
}
