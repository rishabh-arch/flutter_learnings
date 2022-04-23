import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.jsonbin.io/b/6264380b25069545a327ee06";
  @override
  initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));

    // await rootBundle.loadString('assets/files/catalog.json').then((jsonStr) {
    final jsonStr = await http.get(Uri.parse(url)); 
      final jsonResponse = jsonDecode(jsonStr.body);
      // final productsAsList = jsonResponse['products'] as List;
      // print(productsAsList);

      final productsData = jsonResponse['products'];

      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromJson(item))
          .toList();
      setState(() {});

      // final catalog = Catalog.fromJson(jsonResponse);
      // setState(() {
      //   _catalog = catalog;
      // });
    
  }

  @override
  Widget build(BuildContext context) {
    // final int days = 0;
    // final dummyList = List.generate(
    //   CatalogModel.items.length,
    //   (i) => CatalogModel.items[i],
    // );
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      floatingActionButton: VxBuilder(
        mutations: const {AddMutation, RemoveMutation},
        builder: (ctx, _, __) => FloatingActionButton(
          onPressed: () => {Navigator.pushNamed(context, MyRoutes.CartRoute)},
          backgroundColor:
              Theme.of(context).floatingActionButtonTheme.backgroundColor,
          child: const Icon(CupertinoIcons.cart),
        ).badge(
            color: const Color.fromARGB(255, 227, 22, 22),
            size: 25,
            count: _cart.items.length,
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().py16().expand(),
            ])),
      ),
    );
  }
}
