import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';

class RouterMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const RouterMenu({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
          color: AppColor.secondary,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: AppColor.primary.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: AppColor.primary,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
