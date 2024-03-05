import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class ECDC extends StatelessWidget {
  const ECDC({super.key});

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
              "ECDC",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Equinox", color: Colors.white),
            )),
            exploreCard(
              name: "Secure Comms",
              image: "assets/images/Embedded.jpg",
              url: 'https://techkriti.org/competitions/details/Secure%20Comms',
            ),
            exploreCard(
              name: "Galactic Dodger",
              image: "assets/images/Electromania.jpg",
              url:
                  'https://techkriti.org/competitions/details/Galactic%20Dodger',
            ),
          ],
        ),
      ),
    );
  }
}
