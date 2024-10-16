import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class SubscriptionText extends StatelessWidget {
  const SubscriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Want more subscription days? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: 'Refer a friend now',
                  style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 5), // Add some space before the icon
          const Icon(
            Icons.arrow_forward_outlined, // Use any icon you want
            color: AppColor.primary, // Icon color
            size: 18, // Icon size
          ),
        ],
      ),
    );
  }
}
