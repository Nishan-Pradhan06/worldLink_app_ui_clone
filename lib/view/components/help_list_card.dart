import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';

class HelpListCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const HelpListCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: AppColor.secondary,
            border: Border.all(
              color: const Color.fromARGB(0, 11, 11, 11).withOpacity(0.1),
            ),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: AppColor.primary),
              const SizedBox(width: 30),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
