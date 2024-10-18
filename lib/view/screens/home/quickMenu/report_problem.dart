import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_back_button.dart';
import '../../../../constants/theme.dart';
import '../../../components/appbar.dart';

class ReportProblem extends StatelessWidget {
  const ReportProblem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MyAppBar(
            leading: CustomBackButton(),
            title: 'Report Problem',
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
              child: Column(
                children: [
                  const SizedBox(height: 36),
                  const Text(
                    'Facing internet issues?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 54.0),
                    child: Text(
                      "Firstly diagnose your issue by clicking the 'Start' button. If your problem remains unresolved, please report it.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        overflow: TextOverflow.clip,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 120),
                  const CustomStartButton(),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
                        const Text('You are diagnosing for username:'),
                        const SizedBox(
                          height: 6,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'sumitra96_fblbr ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: 'with WiFi connection: ',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '404_5',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          "START",
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
