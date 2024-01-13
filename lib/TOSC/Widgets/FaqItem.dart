// import 'package:flutter/material.dart';
// import 'package:techkriti/TOSC/constants/colors_and_fonts.dart';

// class FAQItem extends StatefulWidget {
//   final String question;
//   final String answer;

//   const FAQItem({Key? key, required this.question, required this.answer})
//       : super(key: key);

//   @override
//   _FAQItemState createState() => _FAQItemState();
// }

// class _FAQItemState extends State<FAQItem> {
//   bool isExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2.0,
//       color: backgroundcolor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: ExpansionTile(
//         title: Text(
//           widget.question,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//             fontFamily: 'Normal',
//             letterSpacing: 1.1,
//           ),
//         ),
//         onExpansionChanged: (value) {
//           setState(
//             () {
//               isExpanded = value;
//             },
//           );
//         },
//         collapsedIconColor: Colors.white,
//         iconColor: Colors.white,
//         collapsedTextColor: Colors.white,
//         textColor: Colors.white,
//         tilePadding: const EdgeInsets.all(16.0),
//         initiallyExpanded: isExpanded,
//         children: [
//           Padding(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             child: Text(
//               widget.answer,
//               style: const TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.white,
//                 fontFamily: 'Normal',
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 1.1,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
