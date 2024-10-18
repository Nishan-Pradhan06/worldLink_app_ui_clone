import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_back_button.dart';
import 'package:worldlink/view/components/custom_button.dart';
import 'package:worldlink/view/components/heading.dart';
import 'package:worldlink/view/components/textfield.dart';
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
              child: ListView(
                children: [
                  const Heading(title: 'Password'),
                  const SizedBox(height: 10),
                  const Textfield(),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '12/16',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Suggest Strong Password',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: CustomButton(
                      title: 'Change Password',
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        'View Wi-Fi QR code',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.primary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
