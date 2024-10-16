import 'package:flutter/material.dart';
import 'package:worldlink/view/components/custom_appbar.dart';
import 'package:worldlink/view/components/online_icon.dart';
import '../../constants/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Additional header for online status and router image
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.primary),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                    child: Text(
                      'Good Afternoon, sumitra96_fblbr',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: OnlineIcon(),
                  ),
                ],
              ),
            ),
          ),
          // DraggableScrollableSheet positioned below the CustomAppbar
          DraggableScrollableSheet(
            initialChildSize: 0.78,
            minChildSize: 0.78,
            builder: (
              BuildContext context,
              ScrollController scrollController,
            ) {
              return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  controller: scrollController,
                  children: const [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),

          // Custom AppBar positioned at the top
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomAppbar(
              height: 65,
            ),
          ),
        ],
      ),
    );
  }
}


  // child: Card(
  //                 color: Colors.lightBlue[100],
  //                 child: const Padding(
  //                   padding: EdgeInsets.all(16.0),
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         "My Internet Plan",
  //                         style: TextStyle(
  //                           fontSize: 18,
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                       SizedBox(height: 10),
  //                       Text(
  //                         "98 Days left",
  //                         style: TextStyle(fontSize: 16),
  //                       ),
  //                       SizedBox(height: 10),
  //                       Text(
  //                         "Special Offer 80Mbps/12mths(A) with Dual Band ONU",
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),


  // Container(
  //                 padding: const EdgeInsets.all(16),
  //                 margin: const EdgeInsets.all(16),
  //                 decoration: BoxDecoration(
  //                   image: const DecorationImage(
  //                     fit: BoxFit.cover,
  //                     image: AssetImage(
  //                       'assets/banner.png',
  //                     ),
  //                   ),
  //                   color: Colors.blue[50],
  //                   borderRadius: BorderRadius.circular(12),
  //                 ),
  //                 child: Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     const Column(
  //                       children: [
  //                         Text(
  //                           'My Internet Plan',
  //                           style: TextStyle(
  //                             fontSize: 14,
  //                           ),
  //                         ),
  //                         SizedBox(height: 10),
  //                         Text(
  //                           '98 Days left',
  //                           style: TextStyle(
  //                             fontSize: 16,
  //                             color: Colors.black87,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                     const SizedBox(width: 15),
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       crossAxisAlignment: CrossAxisAlignment.center,
  //                       children: [
  //                         Center(
  //                           child: Text(
  //                             'Special Offer 80Mbps/\n12mths(A) with Dual Band ONU',
  //                             style: TextStyle(
  //                                 fontSize: 14, color: Colors.grey[700]),
  //                           ),
  //                         ),
  //                         const SizedBox(height: 15),
  //                         // LinearProgressIndicator(
  //                         //   value: 0.5,
  //                         //   backgroundColor: Colors.grey[300],
  //                         //   valueColor: const AlwaysStoppedAnimation<Color>(
  //                         //     Colors.blue,
  //                         //   ),
  //                         // ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),