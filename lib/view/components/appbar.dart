import 'package:flutter/material.dart';
import '../../constants/theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? height; // Add a height parameter

  const MyAppBar({
    super.key,
    required this.title,
    this.height, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.primary,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      toolbarHeight: height, // Set the AppBar's height
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height!); // Use the height parameter
}
