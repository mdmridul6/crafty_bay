import 'package:crafty_bay/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.sectionTitle,
    required this.onTap,
  });

  final String sectionTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            "See All",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.themeColor,
            ),
          ),
        ),
      ],
    );
  }
}
