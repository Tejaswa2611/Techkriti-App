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
              image: "assets/images/Bridge Design Challenge.jpg",
              url:
                  'https://techkriti.org/competitions/details/Bridge%20Design%20Challenge',
            ),
            exploreCard(
              name: "Innovate Adorn Challenge",
              image: "assets/images/InnovationAdornChallenge.jpg",
              url:
                  'https://techkriti.org/competitions/details/Innovate%20Adorn%20Challenge',
            ),
            exploreCard(
              name: "AutoDesk Design Challenge",
              image: "assets/images/AUTOCAD Design Challenge.jpg",
              url:
                  'https://techkriti.org/competitions/details/AutoDesk%20Design%20Challenge',
            ),
          ],
        ),
      ),
    );
  }
}
