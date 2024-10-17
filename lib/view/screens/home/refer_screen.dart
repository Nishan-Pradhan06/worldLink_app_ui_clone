import 'package:flutter/material.dart';
import 'package:worldlink/view/components/appbar.dart';

class ReferScreen extends StatelessWidget {
  const ReferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Refer'),
    );
  }
}
