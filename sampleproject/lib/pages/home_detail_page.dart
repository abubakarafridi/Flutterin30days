import 'package:flutter/material.dart';
import 'package:sampleproject/models/catalogapp.dart';
import 'package:sampleproject/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailpage extends StatelessWidget {
  final Item catalog;

  const HomeDetailpage({super.key, required this.catalog})
      : assert(catalog != null),
        super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.whiteishtColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red400.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkbluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Add to cart".text.color(Colors.white).make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkbluishColor).make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                    "Amet erat nonumy sanctus ea dolore eirmod et, stet eirmod nonumy eos elitr sed takimata justo, kasd eirmod aliquyam et ut sea. Stet ipsum elitr magna consetetur et ipsum. Sit amet clita voluptua sanctus dolore, stet eirmod ut et sit dolore est sed. Amet vero eirmod vero sit ipsum sanctus.Est lorem amet invidunt amet sed justo sadipscing accusam et lorem. Nonumy clita ut gubergren takimata elitr, dolor ut dolor diam et ea voluptua, ea et est ut clita, dolore diam sit et takimata consetetur aliquyam et dolor vero. Accusam justo et et dolore eirmod, justo stet et dolor et accusam dolores gubergren sit et. Et stet eos dolor erat ut invidunt. Amet aliquyam diam clita vero sit. Ipsum aliquyam diam et amet eirmod et erat invidunt dolore. Magna eirmod sed ea sed amet, lorem sit dolore invidunt elitr ea amet nonumy ea, stet sed dolor eirmod sit. Aliquyam rebum.".text.textStyle(context.captionStyle).make().p20()
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
