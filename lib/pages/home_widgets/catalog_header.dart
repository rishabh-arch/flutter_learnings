import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(context.theme.secondaryHeaderColor).make(),
        "Trending Products".text.xl2.color(context.theme.secondaryHeaderColor).make(),
      ],
    );
  }
}