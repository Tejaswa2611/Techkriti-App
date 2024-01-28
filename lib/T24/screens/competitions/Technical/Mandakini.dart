import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class Mandakini extends StatelessWidget {
  const Mandakini({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Mandakini",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "Astro Quiz",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
            exploreCard(
                name: "Observe Analyse & Solve",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          ],
        ),
      ),
    );
  }
}
