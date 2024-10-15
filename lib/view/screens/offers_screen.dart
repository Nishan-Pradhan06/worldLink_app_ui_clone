import 'package:flutter/material.dart';
import 'package:worldlink/view/components/offer.dart';
import '../../constants/theme.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({super.key});
  final List<String> offerImages = [
    'assets/banner.png',
    'assets/banner.png',
    'assets/banner.png',
    'assets/banner.png',
    'assets/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: const BoxDecoration(color: AppColor.primary),
          child: const Center(
            child: Text(
              'Offer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Colors.white, // Background color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView.builder(
              itemCount: offerImages.length,
              itemBuilder: (context, index) {
                return OfferCard(imagePath: offerImages[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
