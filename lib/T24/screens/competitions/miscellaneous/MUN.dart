import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class MUN extends StatelessWidget {
  const MUN({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "Model United Nations",
              style: TextStyle(fontSize: 30),
            )),
            exploreCard(
              name: "AD-Hoc",
              image: "",
              url: 'https://techkriti.org/competitions/details/Ad-Hoc',
            ),
            exploreCard(
              name: "Lok Sabha",
              image: "",
              url: 'https://techkriti.org/competitions/details/Lok%20Sabha',
            ),
            exploreCard(
              name: "UNHRC",
              image: "",
              url: 'https://techkriti.org/competitions/details/UNHRC',
            ),
            exploreCard(
              name: "UNSC",
              image: "",
              url: 'https://techkriti.org/competitions/details/UNSC',
            ),
            exploreCard(
              name: "BCCI",
              image: "",
              url: 'https://techkriti.org/competitions/details/BCCI',
            ),
          ],
        ),
      ),
    );
  }
}
