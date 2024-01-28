import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class ECDC extends StatelessWidget {
  const ECDC({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "ECDC",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
                name: "Secure Comms",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
            exploreCard(
                name: "Galactic Dodger",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          ],
        ),
      ),
    );
  }
}
