import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // await Future.delayed(const Duration(seconds: 2));
    await rootBundle.loadString('assets/files/catalog.json').then((jsonStr) {
      final jsonResponse = jsonDecode(jsonStr);
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
    });
  }

  @override
  Widget build(BuildContext context) {
    // final int days = 0;
    // final dummyList = List.generate(
    //   CatalogModel.items.length,
    //   (i) => CatalogModel.items[i],
    // );
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
               const CircularProgressIndicator().centered().py16().expand(),
            ])),
      ),
    );
  }
}






