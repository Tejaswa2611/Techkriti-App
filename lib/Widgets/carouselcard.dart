// // ignore: file_names
// import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final ImageProvider image;
  final VoidCallback onTap;
  final String text;

  const CustomCard2({
    super.key,
    required this.image,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.black,
      elevation: 8,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: image,
              // height: 130.2,
              width: screenWidth * 0.80,
              fit: BoxFit.fitWidth,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    text,
                    style: const TextStyle(
                      fontFamily: 'heading',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24,
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

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final String text;

  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Material(
      color: Colors.black,
      elevation: 8,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 130.2,
              width: screenWidth * 0.80,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/black.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'heading',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22,
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

class CustomCard3 extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  final String text;

  const CustomCard3({
    Key? key,
    required this.imagePath,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      color: Colors.black,
      elevation: 8,
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 157,
              width: screenWidth * 0.8,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Use 'cover' to maintain aspect ratio
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.6),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'heading',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15, // Adjust font size if needed
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
