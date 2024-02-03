import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class CubingEvents extends StatelessWidget {
  const CubingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Cubing Events",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
              name: "Cubing Extravaganza",
              image: "",
              url:
                  'https://techkriti.org/competitions/details/Cubing%20Extravaganza',
            ),
            exploreCard(
              name: "IORC",
              image: "",
              url: 'https://techkriti.org/competitions/details/IORC',
            ),
          ],
        ),
      ),
    );
  }
}
