
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

  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item){
    _itemIds.remove(item.id);
  }

}