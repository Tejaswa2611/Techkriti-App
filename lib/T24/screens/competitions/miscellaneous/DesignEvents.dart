import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class DesignEvents extends StatelessWidget {
  const DesignEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Design Events",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "Bridge Design Challenge",
                image: "assets/images/Bridge Design Challenge.jpg"),
            exploreCard(
                name: "Innovate Adorn Challenge",
                image: "assets/images/InnovationAdornChallenge.jpg"),
            exploreCard(
                name: "AutoDesk Design Challenge",
                image: "assets/images/AUTOCAD Design Challenge.jpg"),
          ],
        ),
      ),
    );
  }
}
