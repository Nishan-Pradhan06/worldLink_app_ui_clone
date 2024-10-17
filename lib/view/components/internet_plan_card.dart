import 'package:flutter/material.dart';
import 'package:worldlink/constants/theme.dart';

class InternetPlanCard extends StatelessWidget {
  const InternetPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        width: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/banner.png',
            ),
          ),
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Internet Plan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '98 Days left',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(172, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Special Offer 80Mbps/\n12mths(A) with Dual Band\nONU',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 10, // Adjust the height here
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(5), // Adjust the radius here
                        child: LinearProgressIndicator(
                          value: 0.5,
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            AppColor.primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
