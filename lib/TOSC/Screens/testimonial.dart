// import 'package:flutter/material.dart';
// // import 'package:techkriti/Widgets/colors_and_fonts.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class TestimonialsPage extends StatelessWidget {
//   TestimonialsPage({Key? key}) : super(key: key);

//   final List<String> videoUrls = [
//     'https://www.youtube.com/watch?v=cCDOPuoRpjQ',
//     'https://www.youtube.com/watch?v=uGUXpyMAqbw',
//     'https://www.youtube.com/watch?v=zd9g9Xn_lIQ',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // final screenHeight = MediaQuery.of(context).size.height;
//     // final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text(
//                 "Testimonials",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 30,
//                   fontFamily: 'heading',
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 16.0),
//               Column(
//                 children: List.generate(videoUrls.length, (index) {
//                   final videoUrl = videoUrls[index];
//                   return Column(
//                     children: [
//                       YouTubeVideoPlayer(videoUrl: videoUrl),
//                       const SizedBox(height: 8.0),
//                       Text(
//                         'Video ${index + 1} Testimonial',
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 20.0),
//                     ],
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class YouTubeVideoPlayer extends StatelessWidget {
//   final String videoUrl;

//   const YouTubeVideoPlayer({Key? key, required this.videoUrl})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final YoutubePlayerController controller = YoutubePlayerController(
//       initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//       ),
//     );

//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8.0),
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(0, 2),
//             blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: YoutubePlayer(
//           controller: controller,
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Colors.red,
//           progressColors: const ProgressBarColors(
//             playedColor: Colors.red,
//             handleColor: Colors.redAccent,
//           ),
//         ),
//       ),
//     );
//   }
// }
