import 'package:flutter/material.dart';
import '../../constants/theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? height; // Add a height parameter
  final Widget? leading; // Change icon to leading widget
  final Widget? action; // Change icon to action widget

  const MyAppBar({
    super.key,
    required this.title,
    this.height, // Default height
    this.leading, // Allow for a leading widget (icon)
    this.action, // Allow for an action widget (icon)
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: AppColor.primary,
      leading: leading, // Use the leading widget
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      actions: action != null
          ? [action!]
          : [], // Wrap action in a list if it's not null
      toolbarHeight: height, // Set the AppBar's height
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        height ?? kToolbarHeight,
      );
}
