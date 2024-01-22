import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WhatsHot extends StatefulWidget {
  const WhatsHot({super.key});

  @override
  State<WhatsHot> createState() => _WhatsHotState();
}

class _WhatsHotState extends State<WhatsHot> {
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
                          // fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ))
                  .toList(),
              carouselController: cc1,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2,
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
