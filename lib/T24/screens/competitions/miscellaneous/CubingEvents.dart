import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class CubingEvents extends StatelessWidget {
  const CubingEvents({super.key});

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
              "Cubing Events",
              style: TextStyle(
                  fontSize: 30, fontFamily: "Equinox", color: Colors.white),
            )),
            exploreCard(
              name: "Cubing Extravaganza",
              image: "assets/images/Cube-Extravganza.jpg",
              url:
                  'https://techkriti.org/competitions/details/Cubing%20Extravaganza',
            ),
            exploreCard(
              name: "IORC",
              image: "assets/images/IOPC.jpg",
              url: 'https://techkriti.org/competitions/details/IORC',
            ),
          ],
        ),
      ),
    );
  }
}
