import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(catalog.name),
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
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
                .xl4
                .color(MyTheme.darkBluishColor)
                .bold
                .make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to Cart".text.make(),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
            ).wh(120, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.image.toString()),
                    child: Image.network(catalog.image))
                .h48(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,

                  child: SingleChildScrollView(
                    
                    child: Column(
                      children: [
                        catalog.name.text.xl4
                            .color(MyTheme.darkBluishColor)
                            .bold
                            .make(),
                        catalog.desc.text.xl
                            .color(MyTheme.darkBluishColor)
                            .make(),
                        10.heightBox,
                  
                        "Eiusmod eu sit duis officia cillum anim aliquip quis occaecat. Ipsum cillum sit ullamco minim occaecat occaecat velit tempor. Sint nostrud commodo ad nisi magna in in tempor Lorem elit dolore. Duis reprehenderit nisi eiusmod do irure "
                            .text
                            .xl
                            .make()
                            .p16()
                            
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
