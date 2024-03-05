import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class Sustainability extends StatelessWidget {
  const Sustainability({super.key});

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
              "Sustainability",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Equinox", color: Colors.white),
            )),
            exploreCard(
              name: "  Low-Carbon Lifecycle \n             Challenge",
              image: "assets/images/AdHoc.jpg",
              url:
                  'https://techkriti.org/competitions/details/Low-Carbon%20Lifecycle%20Challenge',
            ),
          ],
        ),
      ),
    );
  }
}
