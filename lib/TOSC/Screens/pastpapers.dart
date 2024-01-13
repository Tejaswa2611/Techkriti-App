// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../constants/colors_and_fonts.dart';

// class PastPapersPage extends StatelessWidget {
//   static const String routeName = '/past-papers';
//   const PastPapersPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Center(
//           child: Padding(
//         padding:  const EdgeInsets.all(12.0),
//         child: ElevatedButton(
//           onPressed: _launchpaperForm,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.black87,
//             padding: const EdgeInsets.all(8),
//             shape: RoundedRectangleBorder(
//               borderRadius:
//                   BorderRadius.circular(8), // You can adjust the border radius
//             ),
//           ),
//           child: const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Flexible(
//                 // This will ensure the text wraps properly
//                 child: Text(
//                   'Click here to see Past Papers',
//                   style: TextStyle(
//                       fontFamily: textFont,
//                       fontSize: 18,
//                       color: Colors.white), // Adjust text style
//                   textAlign: TextAlign.center, // Center align the text
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
// _launchpaperForm() async {
//   const url =
//       'https://drive.google.com/drive/folders/1yAGaBIX13kWafKooeXzAYzCoiUVdMZ_M';
//   debugPrint("Launching Google Form");
//   final uri = Uri.parse(url);
//   if (await canLaunchUrl(uri)) {
//     await launchUrl(uri);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
