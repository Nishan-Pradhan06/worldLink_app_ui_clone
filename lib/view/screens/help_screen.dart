import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/help_list_card.dart';
import 'package:worldlink/view/screens/help/contact_us.dart';
import 'package:worldlink/view/screens/help/report_problem.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MyAppBar(title: 'Help'),
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
                HelpListCard(
                  icon: Icons.build_rounded,
                  title: 'Report Problem',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ReportProblem(),
                      ),
                    );
                  },
                ),
                HelpListCard(
                  icon: Icons.receipt_long_rounded,
                  title: 'View your tickets',
                  onTap: () {},
                ),
                HelpListCard(
                  icon: Icons.location_on_rounded,
                  title: 'Locatoin Shift',
                  onTap: () {},
                ),
                HelpListCard(
                  icon: Icons.phone_in_talk_rounded,
                  title: 'Contact Us',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ContactUs(),
                      ),
                    );
                  },
                ),
                HelpListCard(
                  icon: Icons.email_rounded,
                  title: 'Write us a mail',
                  onTap: () {},
                ),
                HelpListCard(
                  icon: Icons.chat_bubble_outline_rounded,
                  title: 'Chat With Us',
                  onTap: () {},
                ),
                HelpListCard(
                  icon: Icons.help_outline_rounded,
                  title: 'Read FAQs',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
