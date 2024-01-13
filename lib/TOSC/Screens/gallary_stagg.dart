// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:techkriti/TOSC/constants/colors_and_fonts.dart';

// class GalleryStaggerd extends StatefulWidget {
//   const GalleryStaggerd({super.key});

//   @override
//   State<GalleryStaggerd> createState() => _GalleryStaggerdState();
// }

// class _GalleryStaggerdState extends State<GalleryStaggerd> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundcolor,
//       body: MasonryGridView.builder(
//         itemCount: 11,
//         gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (context, index) => Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Image.asset('assets/images/${index + 102}.jpg'), //Image.asset('assets/images/101.png'),
//         ),
//       ),
//     );
//   }
// }
