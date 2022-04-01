import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final int days = 0;
    final dummyList = List.generate(
      CatalogModel.items.length,
      (i) => CatalogModel.items[i],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Khamakha'),
        centerTitle: true,
        // backgroundColor: Color.fromARGB(255, 51, 45, 128),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
