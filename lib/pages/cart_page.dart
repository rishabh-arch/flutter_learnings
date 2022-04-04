import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Vx.m8,
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // "Total".text.xl3.white.bold.make(),
          "\$9999".text.xl3.white.bold.make(),
          ElevatedButton(onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Checkout"),));
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index)=>ListTile(
        leading: const Icon(Icons.done),
        title: Text("Item $index"),
        trailing: const Icon(Icons.remove_circle_outline),
        textColor: Colors.white,
      ),
    );
  }
}
