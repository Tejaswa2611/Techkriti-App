//import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List images = [
    {"id": 1, "path": 'assets/images/101.jpg'},
    {"id": 2, "path": 'assets/images/102.jpg'},
    {"id": 3, "path": 'assets/images/103.jpg'},
    {"id": 4, "path": 'assets/images/104.jpg'},
    {"id": 5, "path": 'assets/images/105.jpg'},
    {"id": 6, "path": 'assets/images/106.jpg'},
    {"id": 7, "path": 'assets/images/107.jpg'},
  ];

  final CarouselController cc1 = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: images
                  .map((item) => ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          item['path'],

                          // fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ))
                  .toList(),
              carouselController: cc1,
              options: CarouselOptions(
                clipBehavior: Clip.antiAlias,
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                aspectRatio: 2,
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
