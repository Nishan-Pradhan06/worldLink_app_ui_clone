import 'package:flutter/material.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                Text(
                  'My Internet Plan',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '98 Days left',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Special Offer 80Mbps/\n12mths(A) with Dual Band ONU',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ),
                const SizedBox(height: 15),
                // LinearProgressIndicator(
                //   value: 0.5,
                //   backgroundColor: Colors.grey[300],
                //   valueColor: const AlwaysStoppedAnimation<Color>(
                //     Colors.blue,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
