import 'package:flutter/material.dart';
import 'package:techkriti/T24/screens/competitions/explorecard.dart';

class businessevents extends StatefulWidget {
  const businessevents({super.key});

  @override
  State<businessevents> createState() => _businesseventsState();
}

class _businesseventsState extends State<businessevents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
              child: Text(
            "Business Events",
            style: TextStyle(
                fontSize: 30, fontFamily: "Equinox", color: Colors.white),
          )),
          exploreCard(
            name: "Strategy Sprint",
            image: "assets/images/StrategySprint.jpg",
            url: 'https://techkriti.org/competitions/details/Strategy%20Sprint',
          ),
          exploreCard(
            name: "Marketing Mavericks",
            image: "assets/images/Marketing-Mavericks.jpg",
            url:
                'https://techkriti.org/competitions/details/Marketing%20Mavericks',
          ),
          exploreCard(
            name: "Product Showdown",
            image: "assets/images/ProductShowdown.jpg",
            url:
                'https://techkriti.org/competitions/details/Product%20Showdown',
          ),
          exploreCard(
            name: "Analytics Attax",
            image: "assets/images/BeatTheMarket.png",
            url: 'https://techkriti.org/competitions/details/Analytics%20Attax',
          ),
        ],
      ),
    );
  }
}
