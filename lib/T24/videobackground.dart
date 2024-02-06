// import 'package:flutter/material.dart';
// import 'package:techkriti/T24/screens/landing.dart';
// import 'package:video_player/video_player.dart';

// class VideoBackground extends StatefulWidget {
//   const VideoBackground({super.key});

//   @override
//   State<VideoBackground> createState() => _VideoBackgroundState();
// }

// class _VideoBackgroundState extends State<VideoBackground> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/Cubes.mp4')
//       ..initialize().then((_) {
//         _controller.play();
//         _controller.setLooping(true);
//         // Ensure the first frame is shown after the video is initialized
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: <Widget>[
//             SizedBox.expand(
//               child: FittedBox(
//                 fit: BoxFit.cover,
//                 child: SizedBox(
//                   width: _controller.value.size?.width ?? 0,
//                   height: _controller.value.size?.height ?? 0,
//                   child: VideoPlayer(_controller),
//                 ),
//               ),
//             ),
//             const LandingPage()
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
