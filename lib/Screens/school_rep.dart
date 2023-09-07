import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:techkriti/constants/colors_and_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SchoolRepresentative extends StatefulWidget {
  static const String routeName = '/school-rep';

  const SchoolRepresentative({Key? key}) : super(key: key);

  @override
  State<SchoolRepresentative> createState() => _SchoolRepresentativeState();
}

class _SchoolRepresentativeState extends State<SchoolRepresentative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FadeInDown(
                child: Image.asset(
                  'assets/images/SR2.jpg',
                  // height: 170,
                  // alignment: Alignment.topCenter,
                ),
              ),
            ),
            FadeInRight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildHeading("School Representative, TOSC'23, IIT Kanpur"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInRight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildDescription(
                    "Golden opportunity to witness the grandeur of Techkriti in one of the most renowned and prestigious institutions of the country, IIT Kanpur. Share firsthand experiences, provide personalized guidance, and motivate peers to engage with the competition."),
              ),
            ),
            FadeInRight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildDescription(
                    "Form a valuable network with thousands of brilliant like-minded students from all across the country by being a School Representative of TOSC, Techkriti, IIT Kanpur."),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildHeading("Responsibilities"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Opportunity to organize National Level Competitions in your school."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Informing your School's Coordinator or Principal about Techkriti Open School Championship (TOSC) and requesting them to share it with the students."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Sharing TOSC related information with school students and letting them know about the benefits."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Reaching as many students as you can."),
              ),
            ),
             const SizedBox(
              height: 30,
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildHeading("Benefits"),
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Excellent Platform to sharpen your Communication and Technical skills."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Certificate of appreciation from TOSC, Techkriti’24, IIT Kanpur."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Top representatives will get a chance to visit the IIT Kanpur Campus during Techkriti’24."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Awarded with various Goodies, Vouchers, and online Subscriptions."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Develop management abilities and network with students."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Career Counseling session with IITians."),
              ),
            ),
            FadeInLeft(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: buildBulletPoint("Lucky winners can get a chance to visit ARIES Nainital."),
              ),
            ),

           Padding(
             padding: const EdgeInsets.all(12.0),
             child: ElevatedButton(
                  onPressed: _launchSRForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    padding: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // You can adjust the border radius
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        // This will ensure the text wraps properly
                        child: Text(
                          'Fill this form for School Representative',
                          style: TextStyle(
                            fontFamily: textFont,
                              fontSize: 18,
                              color: Colors.white), // Adjust text style
                          textAlign: TextAlign.center, // Center align the text
                        ),
                      ),
                    ],
                  ),
                ),
           )
          ],
        ),
      ),
    );
  }

  Widget buildHeading(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: headingFont
      ),
    );
  }

  Widget buildDescription(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: textFont
        ),
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 10,
          child: Icon(Icons.brightness_1, size: 8),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: textFont
            ),
          ),
        ),
      ],
    );
  }
}
_launchSRForm() async {
  const url =
      'https://docs.google.com/forms/d/e/1FAIpQLSe-J_tIJ_yjlNB8AjJMrMQx0ZibCixCHpgTwaIV5llJ57KLlg/viewform?usp=sf_link';
  debugPrint("Launching Google Form");
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}


// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class SchoolRepresentative extends StatefulWidget {
//   static const String routeName = '/school-rep';

//   const SchoolRepresentative({Key? key}) : super(key: key);

//   @override
//   State<SchoolRepresentative> createState() => _SchoolRepresentativeState();
// }

// class _SchoolRepresentativeState extends State<SchoolRepresentative> {
//   final List<String> responsibilities = [
//     "Opportunity to organize National Level Competitions in your school.",
//     "Informing your School's Coordinator or Principal about Techkriti Open School Championship (TOSC) and requesting them to share it with the students.",
//     "Sharing TOSC related information with school students and letting them know about the benefits.",
//     "Reaching as many students as you can.",
//   ];

//   final List<String> benefits = [
//     "Excellent Platform to sharpen your Communication and Technical skills.",
//     "Certificate of appreciation from TOSC, Techkriti’24, IIT Kanpur.",
//     "Top representatives will get a chance to visit the IIT Kanpur Campus during Techkriti’24.",
//     "Awarded with various Goodies, Vouchers, and online Subscriptions.",
//     "Develop management abilities and network with students.",
//     "Career Counseling session with IITians.",
//     "Lucky winners can get a chance to visit ARIES Nainital.",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Center(
//                 child: Image.asset(
//                   'assets/images/blacktechkriti.png',
//                   height: 170,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: buildHeading("School Representative, TOSC'23, IIT Kanpur"),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: buildDescription(
//                   "Golden opportunity to witness the grandeur of Techkriti in one of the most renowned and prestigious institutions of the country, IIT Kanpur. Share firsthand experiences, provide personalized guidance, and motivate peers to engage with the competition."),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: buildDescription(
//                   "Form a valuable network with thousands of brilliant like-minded students from all across the country by being a School Representative of TOSC, Techkriti, IIT Kanpur."),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: buildHeading("Responsibilities"),
//             ),
//             CarouselSlider(
//               items: responsibilities.map((item) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: buildBulletPoint(item),
//                 );
//               }).toList(),
//               options: CarouselOptions(
//                 height: 150,
//                 enableInfiniteScroll: true,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: buildHeading("Benefits"),
//             ),
//             CarouselSlider(
//               items: benefits.map((item) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: buildBulletPoint(item),
//                 );
//               }).toList(),
//               options: CarouselOptions(
//                 height: 150,
//                 enableInfiniteScroll: true,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildHeading(String text) {
//     return Text(
//       text,
//       style: const TextStyle(
//         color: Colors.black,
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }

//   Widget buildDescription(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0),
//       child: Text(
//         text,
//         style: const TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//         ),
//       ),
//     );
//   }

//   Widget buildBulletPoint(String text) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(
//           width: 10,
//           child: Icon(Icons.brightness_1, size: 8),
//         ),
//         const SizedBox(width: 10),
//         Expanded(
//           child: Text(
//             text,
//             style: const TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
