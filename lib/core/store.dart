
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogueModel catalog;
  CartModel cart;

  MyStore()
      : catalog = CatalogueModel(),
        cart = CartModel()..catalogue = CatalogueModel();
}