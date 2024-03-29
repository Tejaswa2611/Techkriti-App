import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class GameDev extends StatelessWidget {
  const GameDev({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
              child: Text(
            "GameDev",
            style: TextStyle(
                fontSize: 30, fontFamily: "Equinox", color: Colors.white),
          )),
          exploreCard(
            name: "BugBetterTest",
            image: "assets/images/Bug-Better-Test.jpg",
            url: 'https://techkriti.org/competitions/details/BugBetterTest',
          ),
          exploreCard(
            name: "OneShotLeveller",
            image: "assets/images/OneShotLeveller.jpg",
            url: 'https://techkriti.org/competitions/details/OneShotLeveller',
          ),
        ],
      ),
    );
  }
}
