import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_back_button.dart';
import '../../../../constants/theme.dart';
import '../../../components/appbar.dart';

class WifiPassword extends StatelessWidget {
  const WifiPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MyAppBar(
            leading: CustomBackButton(),
            title: 'Wifi Password',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColor.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
