import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff0065b3),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.licdn.com/dms/image/v2/D4D03AQFnlTDji6hFzw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1703435442674?e=1733961600&v=beta&t=56dl7E38aQlp8W6aj9TzruoZ-_Cvf9cOmdnnaH4ywsU'),
          radius: 20, // Adjusted the radius to make the avatar visible
        ),
      ),
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Row(
          children: [
            Icon(Icons.search, color: Colors.grey),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "How can I help you?",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_active),
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
