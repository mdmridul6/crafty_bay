import 'package:crafty_bay/presentation/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 16,
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 8
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              iconData: Icons.computer_outlined,
              iconTitle: 'Electrical',
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
