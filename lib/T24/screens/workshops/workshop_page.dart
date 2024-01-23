// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Row(
//             children: [
//               Image.asset(
//                 'assets/app_logo.png', // Replace with your app logo image path
//                 height: 40.0, // Adjust the height as needed
//               ),
//               const SizedBox(width: 8.0),
//               const Text('Card Page'),
//             ],
//           ),
//         ),
//         body: Column(
//           children: [
//             buildCard("Card 1", "assets/image1.jpg", "Description 1", "Hover Text 1"),
//             buildCard("Card 2", "assets/image2.jpg", "Description 2", "Hover Text 2"),
//             buildCard("Card 3", "assets/image3.jpg", "Description 3", "Hover Text 3"),
//             // Add more cards
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildCard(String title, String imagePath, String description, String hoverText) {
//     return InkWell(
//       onTap: () {
//         // Navigate to another page on card click
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => OtherPage(title),
//           ),
//         );
//       },
//       child: Card(
//         elevation: 8.0,
//         child: Column(
//           children: [
//             // Background image
//             Container(
//               height: 200.0, // Adjust the height as needed
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Center(
//                 child: MouseRegion(
//                   cursor: SystemMouseCursors.click,
//                   child: Container(
//                     padding: const EdgeInsets.all(8.0),
//                     color: Colors.black.withOpacity(0.5),
//                     child: Text(
//                       hoverText,
//                       style: const TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // Description at the bottom
//             Container(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 description,
//                 style: const TextStyle(fontSize: 12.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class OtherPage extends StatelessWidget {
//   final String pageTitle;

//   OtherPage(this.pageTitle);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(pageTitle),
//       ),
//       body: Center(
//         child: Text('Content of $pageTitle'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class WorkshopPage extends StatefulWidget {
  static const String routeName = '/workshops';

  const WorkshopPage({super.key});

  @override
  State<WorkshopPage> createState() => _WorkshopPageState();
}

class _WorkshopPageState extends State<WorkshopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Workshops',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            leading: IconButton(
              onPressed: (() {
                Navigator.of(context).pop();
              }),
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            )),
        body: Center(child: Text("Workshop Page")));
  }
}
