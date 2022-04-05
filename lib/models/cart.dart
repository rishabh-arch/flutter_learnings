import 'package:flutter_catalog/models/catalog.dart';

class CartModel {

static final cartModel = CartModel._internal();

CartModel._internal();

factory CartModel() => cartModel;


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
  void addItem(Item item) {
    if (!items.contains(item)) {
      _itemIds.add(item.id);
    }
  }

  //Remove item from cart
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
