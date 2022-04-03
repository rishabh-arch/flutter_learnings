import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_widgets/catalog_image.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/widgets/themes.dart';
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(

      child: Row(
        children: [
          Hero(
            tag: Key(catalog.image.toString()),
            child: CatalogImage(image: catalog.image)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Theme.of(context).primaryColorLight).bold.make(),
              catalog.desc.text.sm.color((Theme.of(context).primaryColorLight)).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.min,
                // buttonPadding: Vx.mH8,
                children: [
                  // IconButton(
                  //   icon: const Icon(Icons.favorite_border),
                  //   onPressed: () {},
                  // ),
                  "\$${catalog.price}"
                      .text
                      .xl
                      .color(Theme.of(context).primaryColorLight)
                      .bold
                      .make(),
                  ElevatedButton(
                    onPressed: () {},
                    child: "Add to Cart".text.sm.make(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(Theme.of(context).cardColor).roundedLg.square(150).make().py16();
  }
}
