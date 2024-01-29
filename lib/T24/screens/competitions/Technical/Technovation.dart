import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class Technovation extends StatelessWidget {
  const Technovation({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Technovation",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "Techkriti Innovation Challange",
                image: "assets/images/Techkriti Innovation Challenge.jpg"),
            exploreCard(
                name: "Industry Institute Interaction",
                image: "assets/images/Industry Institute Interaction.jpg"),
          ],
        ),
      ),
    );
  }
}
