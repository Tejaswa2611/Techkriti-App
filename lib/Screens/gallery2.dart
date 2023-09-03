// import 'package:flutter/material.dart';

// class GalleryPage extends StatefulWidget {
//   const GalleryPage({Key? key}) : super(key: key);

//   @override
//   _GalleryPageState createState() => _GalleryPageState();
// }

// class _GalleryPageState extends State<GalleryPage> {
//   int? selectedPhotoIndex;
//   late PageController _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: selectedPhotoIndex ?? 0);
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void _openPhotoPopup(int index) {
//     setState(() {
//       selectedPhotoIndex = index;
//       _pageController = PageController(initialPage: index);
//     });
//   }

//   void _closePhotoPopup() {
//     setState(() {
//       selectedPhotoIndex = null;
//     });
//   }

//   void _navigatePage(int delta) {
//     _pageController.animateToPage(
//       (_pageController.page ?? 0).toInt() + delta,
//       duration: const Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(3.0),
//         child: Stack(
//           children: [
//             GridView.builder(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               itemCount: 10,
//               itemBuilder: (context, index) => GestureDetector(
//                 onTap: () {
//                   _openPhotoPopup(index);
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(4.0),
//                   child: Container(
//                     color: Colors.grey[300],
//                     padding: const EdgeInsets.all(6),
//                     child: Image.asset(
//                       'assets/images/${index + 103}.jpg',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             if (selectedPhotoIndex != null)
//               GestureDetector(
//                 onTap: _closePhotoPopup,
//                 child: Container(
//                   color: Colors.transparent,
//                   child: Stack(
//                     children: [
//                       PageView.builder(
//                         controller: _pageController,
//                         itemCount: 10,
//                         itemBuilder: (context, index) {
//                           return Center(
//                             child: Image.asset(
//                               'assets/images/${index + 103}.jpg',
//                               fit: BoxFit.contain,
//                             ),
//                           );
//                         },
//                         onPageChanged: (index) {
//                           setState(() {
//                             selectedPhotoIndex = index;
//                           });
//                         },
//                       ),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: IconButton(
//                           iconSize: 40,
//                           color: Colors.white,
//                           onPressed: () {
//                             _navigatePage(-1); // Navigate to previous image
//                           },
//                           icon: const Icon(Icons.arrow_back_ios),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: IconButton(
//                           iconSize: 40,
//                           color: Colors.white,
//                           onPressed: () {
//                             _navigatePage(1); // Navigate to next image
//                           },
//                           icon: const Icon(Icons.arrow_forward_ios_outlined),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int? selectedPhotoIndex;
  late PageController _pageController;
  double photoScale = 1.0; // Added for pinch-to-zoom

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedPhotoIndex ?? 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _openPhotoPopup(int index) {
    setState(() {
      selectedPhotoIndex = index;
      photoScale = 1.0; // Reset scale when opening a new photo popup
      _pageController = PageController(initialPage: index);
    });
  }

  void _closePhotoPopup() {
    setState(() {
      selectedPhotoIndex = null;
    });
  }

  void _navigatePage(int delta) {
    _pageController.animateToPage(
      (_pageController.page ?? 0).toInt() + delta,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeInRight(
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Stack(
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    _openPhotoPopup(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.grey[300],
                      padding: const EdgeInsets.all(6),
                      child: Image.asset(
                        'assets/images/${index + 103}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              if (selectedPhotoIndex != null)
                GestureDetector(
                  onTap: _closePhotoPopup,
                  child: Container(
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onScaleUpdate: (details) {
                                setState(() {
                                  photoScale = details.scale
                                      .clamp(1.0, 4.0); // Limit scale range
                                });
                              },
                              child: Center(
                                child: Transform.scale(
                                  scale: photoScale,
                                  child: Image.asset(
                                    'assets/images/${index + 103}.jpg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            );
                          },
                          onPageChanged: (index) {
                            setState(() {
                              selectedPhotoIndex = index;
                              photoScale = 1.0; // Reset scale when changing image
                            });
                          },
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            iconSize: 40,
                            color: Colors.white,
                            onPressed: () {
                              _navigatePage(-1); // Navigate to previous image
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            iconSize: 40,
                            color: Colors.white,
                            onPressed: () {
                              _navigatePage(1); // Navigate to next image
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
