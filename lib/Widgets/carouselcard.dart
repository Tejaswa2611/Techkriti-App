// ignore: file_names
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final ImageProvider image;
  final VoidCallback onTap;
  final String text;

  const CustomCard({super.key, 
    required this.image,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
              height: screenHeight * 0.22,
              width: screenWidth * 0.80,
              fit: BoxFit.fill,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
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
            ),
          ],
        ),
      ),
    );
  }
}


// Material(
//                   color: Colors.black,
//                   elevation: 8,
//                   borderRadius: BorderRadius.circular(10),
//                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const Conduction(),
//                         ),
//                       );
//                     },
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Ink.image(
//                           image: const AssetImage('assets/images/black.jpg'),
//                           height: screenHeight * 0.22,
//                           width: screenWidth * 0.80,
//                           fit: BoxFit.fill,
//                           child: const Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Padding(
//                               padding: EdgeInsets.all(0.0),
//                               child: Text(
//                                 'Conduction',
//                                 style: TextStyle(
//                                     fontFamily: 'heading',
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                     fontSize: 22),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),