import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/heading.dart';
import 'package:worldlink/view/components/router_menu.dart';
import 'package:worldlink/view/components/search_box.dart';
import 'package:worldlink/view/screens/home/quickMenu/connected_devices.dart';
import 'package:worldlink/view/screens/menu/language_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // AppBar
        const MyAppBar(
          title: 'Menu',
        ),

        // Positioned container that overlaps the AppBar
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          bottom: 0, // Added bottom positioning to avoid height issues
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white, // Container color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                // Flexible ListView to ensure scrolling works
                Flexible(
                  child: ListView(
                    physics: const ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Heading(title: 'General'),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RouterMenu(
                        title: 'myWorldLink Hotspot',
                        icon: Icons.wifi, // Wi-Fi icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Employee Verification',
                        icon: Icons.verified_user, // Verification icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'myWorldLink Benefits',
                        icon: Icons.card_giftcard, // Gift/benefit icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Refer Offer',
                        icon: Icons.people_alt, // People/refer icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'NETTV Subscription',
                        icon: Icons.tv, // TV icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Location Shift',
                        icon: Icons.location_on, // Location icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'New Connection',
                        icon: Icons.add_circle, // New/add connection icon
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      const Heading(title: 'Router'),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RouterMenu(
                        title: 'Wi-Fi',
                        icon: Icons.wifi_rounded, // Wi-Fi icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Connected Devices',
                        icon: Icons.devices, // Devices icon
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ConnectedDevices(),
                            ),
                          );
                        },
                      ),
                      RouterMenu(
                        title: 'Device Filtering',
                        icon: Icons.filter_alt, // Filter icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Restart Router',
                        icon: Icons.restart_alt, // Restart icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Add-On Router',
                        icon: Icons.router, // Router icon
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      const Heading(title: 'Network'),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RouterMenu(
                        title: 'Change Bandwidth',
                        icon: Icons.network_check, // Network/bandwidth icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Speed Test',
                        icon: Icons.speed, // Speed icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Fair Usage Policy',
                        icon: Icons.policy, // Policy icon
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      const Heading(title: 'Account'),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RouterMenu(
                        title: 'Billing History',
                        icon: Icons.receipt, // Billing/receipt icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Internet Usage',
                        icon: Icons.data_usage, // Data usage icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Customer Login Password',
                        icon: Icons.lock, // Password/security icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'My QR Code',
                        icon: Icons.qr_code, // QR code icon
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      const Heading(title: 'App'),
                      const SizedBox(
                        height: 8.0,
                      ),
                      RouterMenu(
                        title: 'Language',
                        icon: Icons.language, // Language icon
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LanguageScreen(),
                            ),
                          );
                        },
                      ),
                      RouterMenu(
                        title: 'Version History',
                        icon: Icons.history, // History icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'FAQs',
                        icon: Icons.help_outline, // FAQ/help icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Feedback',
                        icon: Icons.feedback, // Feedback icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Invite',
                        icon: Icons.share, // Invite/share icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Privacy Policy',
                        icon: Icons.privacy_tip, // Privacy icon
                        onTap: () {},
                      ),
                      RouterMenu(
                        title: 'Logout',
                        icon: Icons.logout, // Logout icon
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // SearchBox positioned on top of everything
        const Positioned(
          top: 80,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(89, 0, 0, 0),
                    offset: Offset(0, 2),
                    blurRadius: 6,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: SearchBox(
                title: 'Search in Menu',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
