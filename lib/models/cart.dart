
import 'package:flutter_catalog/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog.dart';

class CartModel {

//catalogue field
  CatalogueModel? _catalogue;

//collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalogue
  CatalogueModel get catalogue => _catalogue!;

  
  set catalogue(CatalogueModel newCatalogue) {
    assert (newCatalogue != null ); 
    _catalogue = newCatalogue;
  }
  //get items in the cart
  List <Item> get item => _itemIds.map((id) => catalogue.getById(id)).toList();

  //get total price

  num get totalPrice => item.fold(0, (total, current) => total + current.price);

  //add item

 // void add(Item item){
  //  _itemIds.add(item.id);
 // }

  //remove item

//   void remove(Item item){
//     _itemIds.remove(item.id);
//   }

}

class AddMutation extends VxMutation<MyStore>{
  final Item item ;

  AddMutation(this.item);
  @override
  perform() {
    store ?.cart ._itemIds.add(item.id);
  }

}

class RemoveMutation extends VxMutation<MyStore>{
  final Item item ;

  RemoveMutation(this.item);
  @override
  perform() {
    store ?.cart ._itemIds.remove(item.id);
  }

}