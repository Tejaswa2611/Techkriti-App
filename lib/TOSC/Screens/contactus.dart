// import 'package:flutter/material.dart';

// import '../Widgets/basiccard.dart';
// // import 'package:techkriti/Widgets/colors_and_fonts.dart';

// class ContactUs extends StatefulWidget {
//   const ContactUs({super.key});

//   @override
//   State<ContactUs> createState() => _ContactUsState();
// }

// class _ContactUsState extends State<ContactUs> {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     // final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // SizedBox(height: MediaQuery.of(context).padding.top + 20),
//                 const Text(
//                   "Contact Us",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 30,
//                     fontFamily: 'heading',
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.03,
//                 ),
//                 const CardTest(
//                   name: 'Overall Coordinator, TOSC',
//                   phoneNumber: '+91-95190 10160',
//                   imagePath: 'assets/images/anurag2.jpg', 
//                   personName: 'Anurag Mandal',
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.05,
//                 ),
//                 const CardTest(
//                   personName: 'Garvit Digarwal',
//                   name: 'Overall Coordinator, TOSC',
//                   phoneNumber: '+91-63865 22048',
//                   imagePath: 'assets/images/garvit2.jpg',
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.05,
//                 ),
//                 const CardTest(
//                   personName: 'Tejaswa  Mathur',
//                   name: 'Head,Web and App',
//                   phoneNumber: '+91 97615 80119',
//                   imagePath: 'assets/images/tejaswa2.jpg',
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.05,
//                 ),
//                 const CardTest(
//                   personName: 'Chitwan Goel',
//                   name: 'Head,Web and App',
//                   phoneNumber: '+91 73108 26277',
//                   imagePath: 'assets/images/chitwan.jpeg',
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.05,
//                 ),
//               ],
//             ),
//           ),
//         ),);
//   }
// }
