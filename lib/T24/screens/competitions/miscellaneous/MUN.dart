import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class MUN extends StatelessWidget {
  const MUN({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "   Model United   \n         Nations",
              style: TextStyle(fontSize: 30, fontFamily: "Equinox"),
            )),
            exploreCard(
              name: "AD-Hoc",
              image: "assets/images/AdHoc.jpg",
              url: 'https://techkriti.org/competitions/details/Ad-Hoc',
            ),
            exploreCard(
              name: "Lok Sabha",
              image: "assets/images/lok-sabha.jpg",
              url: 'https://techkriti.org/competitions/details/Lok%20Sabha',
            ),
            exploreCard(
              name: "UNHRC",
              image: "assets/images/UNHRC.jpg",
              url: 'https://techkriti.org/competitions/details/UNHRC',
            ),
            exploreCard(
              name: "UNSC",
              image: "assets/images/UNSC.jpg",
              url: 'https://techkriti.org/competitions/details/UNSC',
            ),
            exploreCard(
              name: "BCCI",
              image: "assets/images/BCCI.jpg",
              url: 'https://techkriti.org/competitions/details/BCCI',
            ),
          ],
        ),
      ),
    );
  }
}
