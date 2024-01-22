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
import 'package:techkriti/T24/screens/4container/brochure.dart';
import 'package:techkriti/T24/screens/4container/contacts.dart';
import 'package:techkriti/T24/screens/4container/container.dart';
// import 'package:techkriti/T24/screens/4container/container.dart';
import 'package:techkriti/T24/screens/4container/faqs.dart';
import 'package:techkriti/T24/screens/4container/website.dart';
import 'package:techkriti/T24/screens/carousel/gallery.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/competitions/layout.dart';
//import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';
//import 'package:techkriti/T24/widgets/landing_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Gallery(),
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
                        "https://media.defense.gov/2020/Jan/09/2002232153/-1/-1/0/200109-D-BD104-019.JPG"),
                    quote: "Like it or not,Life is a Competition"),
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
                        "https://tse2.mm.bing.net/th?id=OIP.eULh_sPmb08501utaJYVfQHaFc&pid=Api&P=0&h=180"),
                    quote:
                        "Learn from the best and make your own mark in this workshop"),
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
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, Website.routeName),
                    child: const Container1(
                      title: "Website",
                      fontColor: Color.fromARGB(255, 25, 188, 104),
                      Image: NetworkImage(
                          "https://tse2.mm.bing.net/th?id=OIP.XARN-j3dXvgJ8cjkc9m_NQHaF9&pid=Api&P=0&h=180"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
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
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
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
                  padding: const EdgeInsets.only(top: 8.0, left: 20),
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
