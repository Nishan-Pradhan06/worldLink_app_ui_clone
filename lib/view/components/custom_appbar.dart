import 'package:flutter/material.dart';
import 'package:worldlink/view/components/search_box.dart';
import 'package:worldlink/view/screens/home/notification.dart';
import 'package:worldlink/view/screens/home/profile_screen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  const CustomAppbar({
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff0065b3),
      toolbarHeight: height,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4D03AQFnlTDji6hFzw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1703435442674?e=1733961600&v=beta&t=56dl7E38aQlp8W6aj9TzruoZ-_Cvf9cOmdnnaH4ywsU'),
            radius: 20, // Adjusted the radius to make the avatar visible
          ),
        ),
      ),
      title: const SearchBox(title: 'How can I help you?'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              ),
            );
          },
          icon: const Icon(Icons.notifications_active_outlined),
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
