import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class Mandakini extends StatelessWidget {
  const Mandakini({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Mandakini",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Equinox", color: Colors.white),
            )),
            exploreCard(
              name: "Astro Quiz",
              image: "assets/images/Astro Quiz.jpg",
              url: 'https://techkriti.org/competitions/details/Astro%20Quiz',
            ),
            exploreCard(
              name: "Observe Analyse & Solve",
              image: "assets/images/OAS.jpeg",
              url:
                  'https://techkriti.org/competitions/details/Observe%20Analyse%20&%20Solve',
            ),
          ],
        ),
      ),
    );
  }
}
