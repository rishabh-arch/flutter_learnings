import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: ("Cart").text.make(),
      ),
      body: Column(
        children: <Widget>[
          _cartList().p(33).expand(),
          const Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class _cartTotal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  final CartModel _cart = (VxState.store as MyStore).cart;
    return Container(
      padding: Vx.m8,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // "Total".text.xl3.white.bold.make(),
          VxConsumer(
            builder: (context,_,__){
          return "\$${_cart.totalPrice}".text.xl3.white.bold.make();
          
          }, mutations: const {RemoveMutation}, notifications: const {}),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Checkout"),
                ));
              },
              child: "Checkout".text.xl.make())
        ],
      ),
    );
  }
}



class _cartList extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
  final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty?"Nothing to show".text.color(Theme.of(context).secondaryHeaderColor).xl3.makeCentered(): ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        title: _cart.items[index].name.text.color(Theme.of(context).secondaryHeaderColor).make(),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: ()=> RemoveMutation(_cart.items[index]),
        ),

        // textColor: Colors.white,
      ),
    );
  }
}
