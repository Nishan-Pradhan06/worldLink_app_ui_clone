import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_back_button.dart';
import 'package:worldlink/view/components/router_menu.dart';
import 'package:worldlink/view/screens/home/profiles/contact_information.dart';
import 'package:worldlink/view/screens/home/profiles/customer_login_password.dart';
import 'package:worldlink/view/screens/home/profiles/edit_profile.dart';
import '../../components/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MyAppBar(
            leading: CustomBackButton(),
            title: 'Profile',
          ),

          // Positioned container that overlaps the AppBar
          Positioned(
            top: 120,
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
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Nishan Pradhan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                size: 18,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RouterMenu(
                          title: 'Contact Information',
                          icon: Icons.phone_outlined, // Phone icon for contact
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ContactInformation(),
                              ),
                            );
                          },
                        ),
                        RouterMenu(
                          title: 'Customer Login Password',
                          icon: Icons.lock_outline, // Lock icon for password
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CustomerLoginPassword(),
                              ),
                            );
                          },
                        ),
                        RouterMenu(
                          title: 'Sync your account',
                          icon:
                              Icons.sync_outlined, // Sync icon for account sync
                          onTap: () {},
                        ),
                        RouterMenu(
                          title: 'Logout',
                          icon: Icons
                              .logout_outlined, // Logout icon for logging out
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Profile picture positioned on top of everything
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Container(
              height: 80, // Ensuring both height and width are the same
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape
                    .circle, // This will automatically make the container a circle
                image: DecorationImage(
                  image: NetworkImage(
                    'https://media.licdn.com/dms/image/v2/D4D03AQFnlTDji6hFzw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1703435442674?e=1733961600&v=beta&t=56dl7E38aQlp8W6aj9TzruoZ-_Cvf9cOmdnnaH4ywsU',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
