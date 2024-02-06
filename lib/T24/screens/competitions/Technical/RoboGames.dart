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
              style: TextStyle(fontSize: 30, fontFamily: "Equinox"),
            )),
            exploreCard(
              name: "Robowars",
              image: "assets/images/Robowars.jpg",
              url: 'https://techkriti.org/competitions/details/Robowars',
            ),
            exploreCard(
              name: "Manoeuvre",
              image: "assets/images/Manoeuvre.jpg",
              url: 'https://techkriti.org/competitions/details/Manoeuvre',
            ),
            exploreCard(
              name: "IARC",
              image: "assets/images/IARC.jpg",
              url: 'https://techkriti.org/competitions/details/IARC',
            ),
          ],
        ),
      ),
    );
  }
}
