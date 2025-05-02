import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.iconData,
    required this.iconTitle,
    required this.onTap,
  });

  final IconData iconData;
  final String iconTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
              color: AppColors.themeColor.withValues(alpha: 0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Icon(iconData, color: AppColors.themeColor, size: 48),
          ),
          Text(
            iconTitle,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: AppColors.themeColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
