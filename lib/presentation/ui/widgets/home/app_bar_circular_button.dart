import 'package:flutter/material.dart';

class AppBarCircularButton extends StatelessWidget {
  const AppBarCircularButton({
    super.key,
    required this.onTap,
    required this.iconData,
  });

  final VoidCallback onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: IconButton(
        onPressed: onTap,
        icon: Icon(iconData, color: Colors.grey.shade500),
        style: IconButton.styleFrom(
          backgroundColor: Colors.grey.shade200,
          side: BorderSide(color: Colors.grey.shade500, width: 1),
        ),
      ),
    );
  }
}