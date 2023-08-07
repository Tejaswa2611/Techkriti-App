import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final String assetPath;
  final String text;

  const ElevatedContainer(
      {super.key, required this.assetPath, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.45, // Adjust the width as needed
      height: 90, // Adjust the height as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              assetPath,
              width: screenWidth * 0.2, // Adjust the image size as needed
              height: 90, // Adjust the image size as needed
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Text(
                textAlign : TextAlign.center,
                text,
                style: const TextStyle(
                  fontFamily: 'heading',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  // color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
