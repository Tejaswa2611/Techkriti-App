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
//import 'dart:js_interop';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:techkriti/T24/constants/colors_and_fonts.dart';
import 'package:techkriti/T24/notifications.dart';
import 'package:techkriti/T24/screens/4container/BrochurePDF.dart/PDFViewerPage.dart';
import 'package:techkriti/T24/screens/4container/BrochurePDF.dart/brochure.dart';
// import 'package:techkriti/T24/navigation/map.dart';
import 'package:techkriti/T24/screens/4container/contactUs.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// ignore: unnecessary_import
import 'package:flutter/services.dart';

import 'package:techkriti/T24/screens/4container/container.dart';
// import 'package:techkriti/T24/screens/4container/container.dart';
import 'package:techkriti/T24/screens/4container/faqs.dart';
//import 'package:techkriti/T24/screens/4container/website.dart';
import 'package:techkriti/T24/screens/carousel/gallery_carousal.dart';
import 'package:techkriti/T24/screens/carousel/whatshot.dart';
import 'package:techkriti/T24/screens/competitions/competition_page.dart';
import 'package:techkriti/T24/screens/competitions/layout.dart';
import 'package:techkriti/T24/screens/gallery.dart';
//import 'package:techkriti/T24/screens/gallery.dart';
import 'package:techkriti/T24/screens/workshops/workshop_page.dart';
import 'package:techkriti/T24/appbars/landing_appbar.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:techkriti/T24/widgets/landing_card.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = '/landingpage';

  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);
    notificationServices.isTokenRefresh();
    notificationServices.setupInteractMessage(context);
    notificationServices.getDeviceToken().then(
      (value) {
        debugPrint('device token');
        debugPrint('oll  $value');
      },
    );
  }

  Future<void> goToWebPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // color:Colors.red,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/landing_background.gif'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const LandingAppBar(),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: screenHeight,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Gallery",
                      // textAlign: TextAlign.left,
                      style: headingstyle,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, GPage.routeName),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "See more",
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'heading',
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Gallery(),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Container1(
                      // title: "Website",
                      fontColor: Color.fromARGB(255, 25, 188, 104),
                      Image: AssetImage('assets/images/website_card2.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, ContactUs.routeName),
                    child: const Container1(
                      // title: "Contact Us",
                      fontColor: Colors.purple,
                      Image: AssetImage('assets/images/contactus_card.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, FAQ.routeName),
                    child: const Container1(
                      // title: "FAQs",
                      fontColor: Colors.pink,
                      Image: AssetImage("assets/images/FAQs_card.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      const path = 'assets/PDF/Brochure Techkriti\'24.pdf';
                      final file = await Brochure.loadAsset(path);
                      // ignore: use_build_context_synchronously
                      openPDF(context, file);
                    },
                    child: const Container1(
                      // title: "Brochure",
                      fontColor: Colors.blue,
                      Image: AssetImage("assets/images/Bronchure_card.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.facebook.com/techkriti.iitk");
                        },
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.instagram.com/techkriti.iitk/");
                        },
                        icon: Image.asset(
                          'assets/images/instagram.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.linkedin.com/school/techkriti-iitk/mycompany/");
                        },
                        icon: Image.asset(
                          'assets/images/linkedin.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://www.youtube.com/@TechkritiIITKanpur");
                        },
                        icon: Image.asset(
                          'assets/images/youtube.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          await goToWebPage(
                              "https://twitter.com/i/flow/login?redirect_after_login=%2Ftechkriti_iitk");
                        },
                        icon: Image.asset(
                          'assets/images/twitter.png',
                          height: 25,
                          width: 25,
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void openPDF(BuildContext context, File file) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PDFViewerPage(file: file)));
}
