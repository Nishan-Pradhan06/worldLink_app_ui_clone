import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/heading.dart';
import 'package:worldlink/view/components/router_menu.dart';
import 'package:worldlink/view/components/search_box.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      children: const [
                        SizedBox(
                          height: 40,
                        ),
                        Heading(title: 'General'),
                        SizedBox(
                          height: 8.0,
                        ),
                        RouterMenu(
                          title: 'myWorldLink Hotspot',
                          icon: Icons.wifi, // Wi-Fi icon
                        ),
                        RouterMenu(
                          title: 'Employee Verification',
                          icon: Icons.verified_user, // Verification icon
                        ),
                        RouterMenu(
                          title: 'myWorldLink Benefits',
                          icon: Icons.card_giftcard, // Gift/benefit icon
                        ),
                        RouterMenu(
                          title: 'Refer Offer',
                          icon: Icons.people_alt, // People/refer icon
                        ),
                        RouterMenu(
                          title: 'NETTV Subscription',
                          icon: Icons.tv, // TV icon
                        ),
                        RouterMenu(
                          title: 'Location Shift',
                          icon: Icons.location_on, // Location icon
                        ),
                        RouterMenu(
                          title: 'New Connection',
                          icon: Icons.add_circle, // New/add connection icon
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Heading(title: 'Router'),
                        SizedBox(
                          height: 8.0,
                        ),
                        RouterMenu(
                          title: 'Wi-Fi',
                          icon: Icons.wifi_rounded, // Wi-Fi icon
                        ),
                        RouterMenu(
                          title: 'Connected Devices',
                          icon: Icons.devices, // Devices icon
                        ),
                        RouterMenu(
                          title: 'Device Filtering',
                          icon: Icons.filter_alt, // Filter icon
                        ),
                        RouterMenu(
                          title: 'Restart Router',
                          icon: Icons.restart_alt, // Restart icon
                        ),
                        RouterMenu(
                          title: 'Add-On Router',
                          icon: Icons.router, // Router icon
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Heading(title: 'Network'),
                        SizedBox(
                          height: 8.0,
                        ),
                        RouterMenu(
                          title: 'Change Bandwidth',
                          icon: Icons.network_check, // Network/bandwidth icon
                        ),
                        RouterMenu(
                          title: 'Speed Test',
                          icon: Icons.speed, // Speed icon
                        ),
                        RouterMenu(
                          title: 'Fair Usage Policy',
                          icon: Icons.policy, // Policy icon
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Heading(title: 'Account'),
                        SizedBox(
                          height: 8.0,
                        ),
                        RouterMenu(
                          title: 'Billing History',
                          icon: Icons.receipt, // Billing/receipt icon
                        ),
                        RouterMenu(
                          title: 'Internet Usage',
                          icon: Icons.data_usage, // Data usage icon
                        ),
                        RouterMenu(
                          title: 'Customer Login Password',
                          icon: Icons.lock, // Password/security icon
                        ),
                        RouterMenu(
                          title: 'My QR Code',
                          icon: Icons.qr_code, // QR code icon
                        ),
                        SizedBox(
                          height: 14.0,
                        ),
                        Heading(title: 'App'),
                        SizedBox(
                          height: 8.0,
                        ),
                        RouterMenu(
                          title: 'Language',
                          icon: Icons.language, // Language icon
                        ),
                        RouterMenu(
                          title: 'Version History',
                          icon: Icons.history, // History icon
                        ),
                        RouterMenu(
                          title: 'FAQs',
                          icon: Icons.help_outline, // FAQ/help icon
                        ),
                        RouterMenu(
                          title: 'Feedback',
                          icon: Icons.feedback, // Feedback icon
                        ),
                        RouterMenu(
                          title: 'Invite',
                          icon: Icons.share, // Invite/share icon
                        ),
                        RouterMenu(
                          title: 'Privacy Policy',
                          icon: Icons.privacy_tip, // Privacy icon
                        ),
                        RouterMenu(
                          title: 'Logout',
                          icon: Icons.logout, // Logout icon
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
      ),
    );
  }
}
