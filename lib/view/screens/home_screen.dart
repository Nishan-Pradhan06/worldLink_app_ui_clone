import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_appbar.dart';
import 'package:worldlink/view/components/heading.dart';
import 'package:worldlink/view/components/internet_plan_card.dart';
import 'package:worldlink/view/components/online_icon.dart';
import 'package:worldlink/view/components/quick_menu.dart';
import 'package:worldlink/view/components/subscription_text.dart';
import 'package:worldlink/view/screens/menu/connected_devices.dart';
import 'package:worldlink/view/screens/help/report_problem.dart';
import 'package:worldlink/view/screens/home/wifi_password.dart';
import '../../constants/banner_list.dart';
import '../../constants/theme.dart';
import '../components/offer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(
          const Duration(seconds: 1),
        );
      },
      edgeOffset: 2.0,
      child: Stack(
        children: [
          // Additional header for online status and router image
          Positioned(
            top: 78,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.primary),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                    child: Text(
                      'Good Afternoon, sumitra96_fblbr',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: OnlineIcon(),
                  ),
                ],
              ),
            ),
          ),
          // DraggableScrollableSheet positioned below the CustomAppbar
          DraggableScrollableSheet(
            initialChildSize: 0.78,
            minChildSize: 0.78,
            builder: (
              BuildContext context,
              ScrollController scrollController,
            ) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: [
                    const InternetPlanCard(),
                    const SubscriptionText(),
                    const SizedBox(
                      height: 30,
                    ),
                    const Heading(title: 'Quick Menu'),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          QuickMenu(
                            icons: 'assets/icons/wifi.png', // Wi-Fi icon
                            title: 'Wi-Fi\nPassword',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const WifiPassword(),
                                ),
                              );
                            },
                          ),
                          QuickMenu(
                            icons: 'assets/icons/chat.png', // Chat icon
                            title: 'Chat\nWith Us',
                            onTap: () {},
                          ),
                          QuickMenu(
                            icons:
                                'assets/icons/report.png', // Report Problem icon
                            title: 'Report\nProblem',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ReportProblem(),
                                ),
                              );
                            },
                          ),
                          QuickMenu(
                            icons:
                                'assets/icons/mobile.png', // Connected Devices icon
                            title: 'Connected\nDevices',
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ConnectedDevices(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: offers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: OfferCard(imagePath: offers[index]),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          // Custom AppBar positioned at the top
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomAppbar(
              height: 65,
            ),
          ),
        ],
      ),
    );
  }
}
