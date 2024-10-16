import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';

class QuickMenu extends StatelessWidget {
  final String title;
  final String icons;
  const QuickMenu({
    super.key,
    required this.title,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Center the elements in the column
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(87, 0, 0, 0),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              icons,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.center, // Center the text horizontally
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
