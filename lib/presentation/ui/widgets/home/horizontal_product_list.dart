import 'package:crafty_bay/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ProductCard();
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 4);
      },
    );
  }
}