import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {


  //catalog field
  late CatalogModel _catalog;
//Collection of IDs of items in cart
  final List<int> _itemIds = [];

//Getter for catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) 
  {
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds
      .map((itemId) => _catalog.getItemById(itemId))
      .toList();

  num get totalPrice => items.fold(0, (total, item) => total + item.price);

  //Add item to cart

}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);    
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}