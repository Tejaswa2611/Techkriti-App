// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:techkriti/TOSC/constants/colors_and_fonts.dart';

// import '../Widgets/hex_to_color.dart';

// class About extends StatefulWidget {
//   const About({Key? key}) : super(key: key);

//   @override
//   State<About> createState() => _AboutState();
// }

// class _AboutState extends State<About> {
//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor:  Colors.white,//hexToColor('#E0FFFF'),
//       // backgroundColor: hexToColor('#E0FFFF'),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // SizedBox(height: MediaQuery.of(context).padding.top + 20),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: FadeInRight(
//                 child: Image.asset(
//                   'assets/images/blacktechkriti.png',
//                   height: 170,
//                 ),
//               ),
//             ),
//             // const SizedBox(height: 20),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: FadeInLeft(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     buildTech("What is Techkriti?"),
//                     const SizedBox(height: 10),
//                     buildDescription(
//                         "TIndian Institute of Technology, Kanpur, celebrated internationally as the center of academic excellence and knowledge exchange, announces the 30th edition of Asia's largest technical and entrepreneurial fest,Techkriti 24. Attracting participants from every corner of the country as well as from abroad, comprising a total footfall of over 1.2 M from all over India and abroad."),
//                     // const SizedBox(height: 20),
//                     Center(
//                       child: Image.asset(                              
//                         'assets/images/TOSC_black.png',
//                         height: 120,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     buildHeading("What is TOSC?"),
//                     const SizedBox(height: 10),
//                     buildDescription(
//                         "Techkriti Open School Championship (TOSC), an annual aptitude exam crafted to inspire and challenge students from grades 6th to 12th. TOSC is a part of Techkriti, the renowned international technical and entrepreneurial festival organized by the students of IIT Kanpur. Students compete individually in two phases of the competition. The test covers Mental Ability, Aptitude,General knowledge and Puzzles . No previous knowledge is required to participate, the only prerequisite is enthusiasm and confidence."),
//                     const SizedBox(height: 40),
//                     buildHeading("Why TOSC?"),
//                     const SizedBox(height: 10),
//                     buildDescription(
//                         "Our mission is to strengthen and cultivate the talent of our nation at the grassroots level, which serves our sole motive. Through a series of events involving mental aptitude, logic, and scrutiny, it seeks to provide school students a platform to gain fundamental experience and knowledge, to exercise coordination skills, and to think out of the box while providing solutions never thought before."),
//                     const SizedBox(height: 40),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildHeading(String text) {
//     var redStyle = TextStyle(
//       color: hexToColor("#4169E1"),
//       fontFamily: headingFont,
//       fontSize: 24,
//       fontWeight: FontWeight.bold,
//     );

//     const defaultStyle = TextStyle(
//       color: Colors.black,
//       fontFamily: headingFont,
//       fontSize: 24,
//       fontWeight: FontWeight.bold,
//     );

//     const separator = 'TOSC?';
//     final separatorIndex = text.indexOf(separator);

//     if (separatorIndex != -1) {
//       return Row(
//         children: [
//           Text(
//             text.substring(0, separatorIndex),
//             style: defaultStyle,
//           ),
//           Text(
//             separator,
//             style: redStyle,
//           ),
//           Text(
//             text.substring(separatorIndex + separator.length),
//             style: defaultStyle,
//           ),
//         ],
//       );
//     } else {
//       return Text(
//         text,
//         style: defaultStyle,
//       );
//     }
//   }
//   Widget buildTech(String text) {
//     var redStyle = TextStyle(
//       color: hexToColor("#4169E1"),
//       fontFamily: headingFont,
//       fontSize: 24,
//       fontWeight: FontWeight.bold,
//     );

//     const defaultStyle = TextStyle(
//       color: Colors.black,
//       fontFamily: headingFont,
//       fontSize: 24,
//       fontWeight: FontWeight.bold,
//     );

//     const separator = 'Techkriti?';
//     final separatorIndex = text.indexOf(separator);

//     if (separatorIndex != -1) {
//       return Row(
//         children: [
//           Text(
//             text.substring(0, separatorIndex),
//             style: defaultStyle,
//           ),
//           Text(
//             separator,
//             style: redStyle,
//           ),
//           Text(
//             text.substring(separatorIndex + separator.length),
//             style: defaultStyle,
//           ),
//         ],
//       );
//     } else {
//       return Text(
//         text,
//         style: defaultStyle,
//       );
//     }
//   }


//   Widget buildDescription(String text) {
//     return Text(
//       text,
//       style: const TextStyle(
//         color: Colors.black,
//         fontSize: 18,
//         fontFamily: textFont,
//       ),
//     );
//   }
// }
