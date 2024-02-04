import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class SoftwareCorner extends StatelessWidget {
  const SoftwareCorner({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child: Text(
              "SoftWareCorner",
              style: TextStyle(fontSize: 30, fontFamily: "Equinox"),
            )),
            exploreCard(
              name: "Re Dev",
              image: "assets/images/web.jpg",
              url: 'https://techkriti.org/competitions/details/Re%20Dev',
            ),
          ],
        ),
      ),
    );
  }
}
