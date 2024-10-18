import 'package:flutter/material.dart';
import '../../../constants/theme.dart';
import '../../components/appbar.dart';
import '../../components/custom_back_button.dart';

class RestartRouter extends StatelessWidget {
  const RestartRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MyAppBar(
            leading: CustomBackButton(),
            title: 'Restart Router',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColor.secondary, // Background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(height: 36),
                  Text(
                    'Restart your router',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 14),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text(
                      "Restart your router by clicking on the restart button below",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 120),
                  CustomStartButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomStartButton extends StatelessWidget {
  const CustomStartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center, // Center the inner container
            child: Container(
              width: 154,
              height: 154,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.secondary,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center, // Center the inner container
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primary,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Restart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
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
