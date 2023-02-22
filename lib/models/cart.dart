import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';
import 'catalog.dart';

class CartModel {
  // static final cartModel = CartModel._internal();

  // CartModel._internal();

  // factory CartModel() => cartModel;

// catalog field
  late CatalogModel _catalog;

// Collection of IDs of each item
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}
