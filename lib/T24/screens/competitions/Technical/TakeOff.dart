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
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
            exploreCard(
                name: "Multirotor",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
            exploreCard(
                name: "Hovermania",
                image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          ],
        ),
      ),
    );
  }
}
