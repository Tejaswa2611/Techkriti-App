// import 'package:flutter/material.dart';

// class LandingPage extends StatefulWidget {
//   static const String routeName = '/landing';
//   const LandingPage({super.key});

//   @override
//   State<LandingPage> createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: [
//               buildSection("Section 1", "assets/image1.jpg"),
//               buildSection("Section 2", "assets/image2.jpg"),
//               buildSection("Section 3", "assets/image3.jpg"),
//               buildSection("Section 4", "assets/image4.jpg"),
//               buildSection("Section 5", "assets/image5.jpg"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildSection(String title, String imagePath) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 4 / 7,
//       child: Stack(
//         children: [
//           // Background image
//           Positioned.fill(
//             child: Image.asset(
//               imagePath,
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Inner content
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   // Heading at the top
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       title,
//                       style: const TextStyle(
//                         fontSize: 17.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   // Container at the bottom with text and round button
//                   Container(
//                     height: MediaQuery.of(context).size.height * 2 / 7,
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text(
//                           "Your inner text content goes here...",
//                           style: TextStyle(fontSize: 16.0, color: Colors.white),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Button action
//                             },
//                             style: ElevatedButton.styleFrom(
//                               shape: const CircleBorder(), backgroundColor: Colors.blue,
//                               padding: const EdgeInsets.all(12.0),
//                             ),
//                             child: const Icon(Icons.circle),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';
import 'package:techkriti/T24/widgets/landing_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30),
          InkWell(
            onTap: () => Navigator.pushNamed(context, WorkshopPage.routeName),
            child: const LandingCard(text: 'Workshops', color: Colors.blue),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () => Navigator.pushNamed(context, CompetitionPage.routeName),
            child: const LandingCard(text: 'Competitions', color: Colors.green),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () => Navigator.pushNamed(context, GPage.routeName),
            child: const LandingCard(text: 'Gallery', color: Colors.orange),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
