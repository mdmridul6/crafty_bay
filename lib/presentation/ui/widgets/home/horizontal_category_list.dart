import 'package:crafty_bay/presentation/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HorizontalCategoryList extends StatelessWidget {
  const HorizontalCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return CategoryCard(
          iconData: Icons.computer_outlined,
          iconTitle: "Electronic",
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 16);
      },
    );
  }
}
