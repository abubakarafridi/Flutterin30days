import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/models/Cart.dart';
import 'package:sampleproject/models/catalogapp.dart';
import 'package:velocity_x/velocity_x.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;
  AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isinCart = _cart.items.contains(catalog) ?? false;

    return ElevatedButton(
      onPressed: () {
        if (!isinCart) {
        isinCart = isinCart.toggle();
        final _catalog = CatalogModel();
        
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(catalog);
        //setState(() {});

        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
        shape: MaterialStateProperty.all(
          StadiumBorder(),
        ),
      ),
      child: isinCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
