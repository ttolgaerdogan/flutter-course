import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;
  cart.catalog = catalog;
}
