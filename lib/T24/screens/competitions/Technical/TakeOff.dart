import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class TakeOff extends StatelessWidget {
  const TakeOff({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "TakeOff",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
              name: "Skysparks",
              image: "assets/images/Skysparks.jpg",
              url: 'https://techkriti.org/competitions/details/Skysparks',
            ),
            exploreCard(
              name: "Multirotor",
              image: "assets/images/Multirotor.jpg",
              url: 'https://techkriti.org/competitions/details/Multirotor',
            ),
            exploreCard(
              name: "Hovermania",
              image: "assets/images/Hovermania.jpg",
              url: 'https://techkriti.org/competitions/details/Hovermania',
            ),
          ],
        ),
      ),
    );
  }
}
