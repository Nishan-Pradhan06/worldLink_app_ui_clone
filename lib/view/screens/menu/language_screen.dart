import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MyAppBar(
          title: 'Offer',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('English'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Nepali'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
