import 'package:flutter/material.dart';
import 'package:sampleproject/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl2.bold.color(MyTheme.darkbluishColor).make(),
        "Tranding products".text.make(),
      ],
    );
  }
}
