import 'package:sampleproject/models/catalogapp.dart';

class CartModel {
  //catalog field

  late CatalogModel _catalog;

  //collection of IDs -store Ids of each item
  final List<int> _itemIds = [];

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getbyId(id)).toList();

  //get totol price

  num get totalprice =>
      items.fold(0, (total, current) => total + current.price);

  // add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
