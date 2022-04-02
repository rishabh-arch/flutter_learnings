import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
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
      appBar: AppBar(
        title: const Text('Khamakha'),
        centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 51, 45, 128),
      ),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                      child: Text(
                        item.name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                    ),
                    child: Image.network(item.image,fit: BoxFit.cover,),

                    footer: 
                    Container(
                      child: Text(
                        item.price.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                );
                // return ItemWidget(item: CatalogModel.items[index]);
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
    );
  }
}
