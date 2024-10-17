import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';
import 'package:worldlink/view/components/custom_back_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        leading: CustomBackButton(),
        title: 'Notifications',
      ),
      body: ListView(),
    );
  }
}
