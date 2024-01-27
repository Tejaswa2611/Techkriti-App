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
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
              child: Text(
            "Business Events",
            style: TextStyle(fontSize: 30),
          )),
          exploreCard(
              name: "Strategy Sprint",
              image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          exploreCard(
              name: "Marketing Mavericks",
              image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          exploreCard(
              name: "Product Showdown",
              image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
          exploreCard(
              name: "Analytics Attax",
              image: "https://i.postimg.cc/2jH8WLK8/Copy-of-Manoeuvre.jpg"),
        ],
      ),
    );
  }
}
