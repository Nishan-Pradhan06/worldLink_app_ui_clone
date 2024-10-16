import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/router_menu.dart';

class RouterScreen extends StatelessWidget {
  const RouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Router',
        height: 50,
      ),
      body: Stack(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: const BoxDecoration(color: AppColor.primary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Online'),
                    Text('Online'),
                    Text('Online'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Image.asset(
                    'assets/router.png',
                    height: 210,
                    width: 210,
                  ),
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.62,
            minChildSize: 0.62,
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
                  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                  controller: scrollController,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RouterMenu(
                      title: 'Wifi',
                      icon: Icons.wifi_outlined, // Use a "menu" icon
                    ),
                    RouterMenu(
                      title: 'Connected Devices',
                      icon: Icons.devices_rounded, // Use a "devices" icon
                    ),
                    RouterMenu(
                      title: 'Device Filtering',
                      icon: Icons.filter_list_rounded, // Use a "filter" icon
                    ),
                    RouterMenu(
                      title: 'Restart Router',
                      icon: Icons.restart_alt_rounded, // Use a "restart" icon
                    ),
                    RouterMenu(
                      title: 'Add-On Router',
                      icon: Icons.router_rounded, // Use a "router" icon
                    ),
                    RouterMenu(
                      title: 'About Router',
                      icon: Icons.info_outline_rounded, // Use an "info" icon
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
