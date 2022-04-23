import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
  // bool isAdded = false;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        isInCart = !isInCart;
        final _catalog = CatalogModel();
        
        _cart.catalog = _catalog;
        if (isInCart) {
          // _catalog.addToCart(widget.catalog);
          _cart.addItem(catalog);
        } else {
          // _catalog.removeFromCart(widget.catalog);
          _cart.removeItem(catalog);
        }

        // _cart.addItem(widget.catalog);
        // setState(() {});
      },
      child: isInCart?const Icon(Icons.done):const Icon(CupertinoIcons.cart_badge_plus),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(MyTheme.darkBluishColor),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
