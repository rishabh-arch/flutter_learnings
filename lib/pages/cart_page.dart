import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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

class _cartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Vx.m8,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // "Total".text.xl3.white.bold.make(),
          "\$${_cart.totalPrice}".text.xl3.white.bold.make(),
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

class _cartList extends StatefulWidget {
  @override
  State<_cartList> createState() => _cartListState();
}

class _cartListState extends State<_cartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"Nothing to show".text.color(Theme.of(context).secondaryHeaderColor).xl3.makeCentered(): ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        title: _cart.items[index].name.text.color(Theme.of(context).secondaryHeaderColor).make(),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {
            _cart.removeItem(_cart.items[index]);
            setState(() {});
          },
        ),

        // textColor: Colors.white,
      ),
    );
  }
}
