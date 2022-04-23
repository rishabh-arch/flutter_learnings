import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
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

  @override
  Widget build(BuildContext context) {
  // bool isAdded = false;
  VxState.watch(context,on:[AddMutation,RemoveMutation]);
  final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        isInCart = !isInCart;
        if (isInCart) {;
          AddMutation(catalog);
        } else {
          RemoveMutation(catalog);
        }
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
