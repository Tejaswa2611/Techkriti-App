import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class GameDev extends StatelessWidget {
  const GameDev({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "GameDev",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "BugBetterTest",
                image: "assets/images/Bug-Better-Test.jpg"),
            exploreCard(
                name: "OneShotLeveller",
                image: "assets/images/OneShotLeveller.jpg"),
          ],
        ),
      ),
    );
  }
}
