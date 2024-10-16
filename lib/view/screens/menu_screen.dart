import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';
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
            child: Container(
              height: MediaQuery.of(context).size.height - 100, // Adjust height
              decoration: const BoxDecoration(
                color: Colors.white, // Container color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView(
                // physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                children: const [
                  SizedBox(
                    height: 40,
                  ),
                  RouterMenu(
                    title: 'myWorldLink Hostpot',
                    icon: Icons.network_wifi_rounded,
                  ),
                  RouterMenu(
                    title: 'myWorldLink Hostpot',
                    icon: Icons.network_wifi_rounded,
                  ),
                  RouterMenu(
                    title: 'myWorldLink Hostpot',
                    icon: Icons.network_wifi_rounded,
                  ),
                  RouterMenu(
                    title: 'myWorldLink Hostpot',
                    icon: Icons.network_wifi_rounded,
                  ),
                  RouterMenu(
                    title: 'myWorldLink Hostpot',
                    icon: Icons.network_wifi_rounded,
                  ),
                  // Add more RouterMenu items here if needed
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
