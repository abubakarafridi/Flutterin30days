import 'package:sampleproject/models/Cart.dart';
import 'package:sampleproject/models/catalogapp.dart';
import 'package:velocity_x/velocity_x.dart';

class myStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
