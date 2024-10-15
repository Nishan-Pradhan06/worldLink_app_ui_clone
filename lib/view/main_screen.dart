import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';
import 'package:worldlink/view/screens/help_screen.dart';
import 'package:worldlink/view/screens/home_screen.dart';
import 'package:worldlink/view/screens/menu_screen.dart';
import 'package:worldlink/view/screens/offers_screen.dart';
import 'package:worldlink/view/screens/router_screen.dart';
import 'components/custom_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const HelpScreen(),
    const RouterScreen(),
    const OffersScreen(),
    const MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        elevation: 2,
        backgroundColor: AppColor.secondary,
        selectedItemColor: AppColor.primary,
        unselectedItemColor: AppColor.tertiary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_rounded),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.router_rounded),
            label: 'Router',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_rounded),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
