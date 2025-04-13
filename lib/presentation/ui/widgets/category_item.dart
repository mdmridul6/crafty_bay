import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.iconData, required this.iconTitle, required this.onTap});

  final IconData iconData;
  final String iconTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 88,
          width: 88,
          decoration: BoxDecoration(
            color: AppColors.themeColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(iconData, color: AppColors.themeColor, size: 48),
        ),
        SizedBox(height: 8),
        Text(
          iconTitle,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(color: AppColors.themeColor),
        ),
      ],
    );
  }
}
