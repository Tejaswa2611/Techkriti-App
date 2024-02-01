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
// import 'package:techkriti/T24/navigation/map.dart';
import 'package:techkriti/T24/screens/4container/brochure.dart';
import 'package:techkriti/T24/screens/4container/contacts.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:techkriti/T24/screens/4container/container.dart';
// import 'package:techkriti/T24/screens/4container/container.dart';
import 'package:techkriti/T24/screens/4container/faqs.dart';
import 'package:techkriti/T24/screens/4container/website.dart';
import 'package:techkriti/T24/screens/carousel/gallery_carousal.dart';
import 'package:techkriti/T24/screens/carousel/whatshot.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/competitions/layout.dart';
//import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';
//import 'package:techkriti/T24/widgets/landing_card.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';

  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final TextStyle headingstyle = const TextStyle(
      fontFamily: 'heading',
      fontSize: 25,
      fontWeight: FontWeight.normal,
      color: Colors.white);
  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
              "https://techkriti.org/static/media/Typeface.c408070331d0cabb981f.png",
              fit: BoxFit.contain,
              height: 200,
              width: 170)
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Whats hot",
                textAlign: TextAlign.left,
                style: headingstyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: WhatsHot(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, CompetitionPage.routeName),
                child: const Card1(
                  color: Colors.blue,
                  fontColor: Colors.white,
                  title: "Competitions",
                  Image: NetworkImage(
                      "https://i.postimg.cc/J4Zr2Yht/Copy-of-Robowars.png"),
                  // quote: "Like it or not,Life is a Competition"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, WorkshopPage.routeName),
                child: const Card1(
                  color: Colors.black,
                  fontColor: Colors.black,
                  title: "Workshops",
                  Image: NetworkImage(
                      "https://images.unsplash.com/photo-1518770660439-4636190af475?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  // quote:
                  //     "Learn from the best and make your own mark in this workshop"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Gallery",
                textAlign: TextAlign.left,
                style: headingstyle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Gallery(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, Website.routeName),
                    child: const Container1(
                      title: "Website",
                      fontColor: Color.fromARGB(255, 25, 188, 104),
                      Image: AssetImage('assets/images/website_card.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, Contacts.routeName),
                    child: const Container1(
                      title: "Contacts",
                      fontColor: Colors.purple,
                      Image: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.XARN-j3dXvgJ8cjkc9m_NQHaF9&pid=Api&P=0&h=180"),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: InkWell(
                    onTap: () => Navigator.pushNamed(context, FAQ.routeName),
                    child: const Container1(
                      title: "FAQs",
                      fontColor: Colors.pink,
                      Image: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.XARN-j3dXvgJ8cjkc9m_NQHaF9&pid=Api&P=0&h=180"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10),
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, Brochure.routeName),
                    child: const Container1(
                      title: "Brochure",
                      fontColor: Colors.blue,
                      Image: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.XARN-j3dXvgJ8cjkc9m_NQHaF9&pid=Api&P=0&h=180"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
