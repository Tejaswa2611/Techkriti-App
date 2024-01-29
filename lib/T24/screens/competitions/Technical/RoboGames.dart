import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class RoboGames extends StatelessWidget {
  const RoboGames({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "RoboGames",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(name: "Robowars", image: "assets/images/Robowars.jpg"),
            exploreCard(
                name: "Manoeuvre", image: "assets/images/Manoeuvre.jpg"),
            exploreCard(name: "IARC", image: "assets/images/IARC.jpg"),
          ],
        ),
      ),
    );
  }
}
