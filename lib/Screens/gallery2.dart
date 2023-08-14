import 'package:flutter/material.dart';
// import 'package:techkriti/Widgets/colors_and_fonts.dart';
import 'package:techkriti/Widgets/hex_to_color.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage>
    with SingleTickerProviderStateMixin {
  int? selectedPhotoIndex;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openPhotoPopup(int index) {
    setState(() {
      selectedPhotoIndex = index;
      _controller.forward(); // Start the animation
    });
  }

  void _closePhotoPopup() {
    _controller.reverse().whenComplete(() {
      setState(() {
        selectedPhotoIndex = null;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor('#FFFFF0'),
      body: Padding(
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
                    color : hexToColor('#DCDCDC'),
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
                  child: Center(
                    child: ScaleTransition(
                      scale: _scaleAnimation,
                      child: FadeTransition(
                        opacity: _fadeAnimation,
                        child: Image.asset(
                          'assets/images/${selectedPhotoIndex! + 103}.jpg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
