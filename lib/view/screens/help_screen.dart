import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';
import 'package:worldlink/view/components/help_list_card.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppColor.primary),
          child: const Center(
            child: Text(
              'Help',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
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
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/help_icon.png',
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Hello, how can we help you?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                const HelpListCard(
                  icon: Icons.build_rounded,
                  title: 'Report Problem',
                ),
                const HelpListCard(
                  icon: Icons.receipt_long_rounded,
                  title: 'View your tickets',
                ),
                const HelpListCard(
                  icon: Icons.location_on_rounded,
                  title: 'Locatoin Shift',
                ),
                const HelpListCard(
                  icon: Icons.phone_in_talk_rounded,
                  title: 'Contact Us',
                ),
                const HelpListCard(
                  icon: Icons.email_rounded,
                  title: 'Write us a mail',
                ),
                const HelpListCard(
                    icon: Icons.chat_bubble_outline_rounded,
                    title: 'Chat With Us'),
                const HelpListCard(
                  icon: Icons.help_outline_rounded,
                  title: 'Read FAQs',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
